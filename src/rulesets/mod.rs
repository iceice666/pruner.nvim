pub mod ctrl_w;

use nvim_oxi::api::{self, opts::NotifyOpts, types::Mode};

pub(crate) struct KeymapRuleset {
    name: String,
    description: String,
    modes: Vec<Mode>,
    binding_list: Vec<String>,
}

pub(crate) fn process(ruleset: KeymapRuleset) {
    let modes = {
        match ruleset.modes.len() {
            0 => vec![
                Mode::CmdLine,
                Mode::Insert,
                Mode::Langmap,
                Mode::Normal,
                Mode::OperatorPending,
                Mode::Select,
                Mode::Terminal,
                Mode::Visual,
                Mode::VisualSelect,
            ],
            _ => ruleset.modes,
        }
    };
    for mode in modes {
        for binding in &ruleset.binding_list {
            let result = api::del_keymap(mode, binding);
            if let Err(e) = result {
                let _ = api::notify(
                    format!("{} for {:?} is not defined", binding, mode).as_str(),
                    api::types::LogLevel::Debug,
                    &NotifyOpts::default(),
                );
            }
        }
    }
}

pub enum Rulesets {}
