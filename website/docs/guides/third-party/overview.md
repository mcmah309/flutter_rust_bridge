# Overview

What if we want to use an existing third-party Rust package?

## The automatic approach

`flutter_rust_bridge` can automatically scan a whole third party Rust crate and directly generate everything.
Of course, you are free to customize things as well.
In this chapter, we will go through the details step by step.

This feature is quite young, thus it may be possible to have some breaking changes in the future,
and thus it may not follow semantics versioning, unlike other parts of flutter_rust_bridge.

## The manual approach

Alternatively, we can manually repeat the function signatures and struct definitions in external crates,
and then `flutter_rust_bridge` can use it without scanning the third party crate.
Please refer to the second subsection in this chapter.