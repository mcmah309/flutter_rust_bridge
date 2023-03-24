//! Examples of types you'd want to mirror
//! 
 
#[derive(Debug, Clone)]
pub struct RawStringMirrored {
    pub r#value: String,
}

#[derive(Debug, Clone)]
pub struct ApplicationSettings {
    pub name: String,
    pub version: String,
    pub mode: ApplicationMode,
    pub env: Box<ApplicationEnv>,
    pub env_optional: Option<ApplicationEnv>,
}

#[derive(Debug, Clone)]
pub enum ApplicationMode {
    Standalone,
    Embedded,
}

#[derive(Debug, Clone)]
pub struct ApplicationEnv {
    pub vars: Vec<ApplicationEnvVar>,
}

#[derive(Debug, Clone)]
pub enum ApplicationMessage {
    DisplayMessage(String),
    RenderPixel { x: i32, y: i32 },
    Exit,
}

#[derive(Debug, Clone)]
pub struct Numbers(pub Vec<i32>);

#[derive(Debug, Clone)]
pub struct Sequences(pub Vec<i32>);

#[derive(Debug, Clone)]
pub struct ApplicationEnvVar(pub String, pub bool);

impl ApplicationSettings {
    pub fn new(
        name: &str,
        version: &str,
        mode: ApplicationMode,
        env_vars: Vec<(&str, bool)>,
    ) -> Self {
        Self {
            name: name.into(),
            version: version.into(),
            mode,
            env: Box::new(ApplicationEnv {
                vars: env_vars
                    .into_iter()
                    .map(|(k, v)| ApplicationEnvVar(k.into(), v))
                    .collect(),
            }),
            env_optional: None,
        }
    }
}

pub fn get_app_settings() -> ApplicationSettings {
    ApplicationSettings::new(
        "myapp",
        "1.0.0-rc.1",
        ApplicationMode::Standalone,
        vec![("myenv", true)],
    )
}

pub fn poll_messages() -> Vec<ApplicationMessage> {
    vec![
        ApplicationMessage::DisplayMessage("A".to_owned()),
        ApplicationMessage::RenderPixel { x: 5, y: 10 },
        ApplicationMessage::Exit,
    ]
}

pub fn repeat_number(num: i32, times: usize) -> Numbers {
    Numbers(vec![num; times])
}

pub fn repeat_sequences(seq: i32, times: usize) -> Sequences {
    Sequences(vec![seq; times])
}
