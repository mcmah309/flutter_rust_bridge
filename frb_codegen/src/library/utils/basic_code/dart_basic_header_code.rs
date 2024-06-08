use crate::basic_code_partial_impl;
use itertools::Itertools;
use serde::Serialize;
use std::ops::AddAssign;

#[derive(Default, Clone, Debug, Serialize)]
pub(crate) struct DartBasicHeaderCode {
    pub file_top: String,
    pub import: String,
    pub part: String,
}

basic_code_partial_impl!(DartBasicHeaderCode);

impl AddAssign for DartBasicHeaderCode {
    #[inline]
    fn add_assign(&mut self, rhs: Self) {
        self.file_top += &rhs.file_top;
        self.import += &rhs.import;
        self.part += &rhs.part;
    }
}

impl DartBasicHeaderCode {
    pub(crate) fn all_code(&self) -> String {
        let import = optimize_imports(&self.import);
        format!("{}\n{}\n{}", self.file_top, import, self.part)
    }
}

fn optimize_imports(raw: &str) -> String {
    raw.split_inclusive(&['\n', ';'][..])
        .map(|line| line.trim())
        .filter(|line| !line.is_empty())
        .sorted()
        .dedup()
        .join("\n")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    pub fn test_optimize_imports_simple() {
        assert_eq!(
            optimize_imports(
                "
                import 'orange.dart';
                import 'apple.dart';
                import 'orange.dart';
                "
            ),
            "import 'apple.dart';\nimport 'orange.dart';"
        );
    }

    #[test]
    pub fn test_optimize_imports_missing_newline() {
        assert_eq!(
            optimize_imports(" import 'orange.dart'; import 'apple.dart';import 'orange.dart';"),
            "import 'apple.dart';\nimport 'orange.dart';"
        );
    }
}
