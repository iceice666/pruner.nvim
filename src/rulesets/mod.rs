pub mod cmdline_completion;
pub mod ctrl_w;
pub mod n_ctrl_a_x;
pub mod v_ctrl_a_x;

use nvim_oxi::api::{self, opts::NotifyOpts, types::Mode};
use once_cell::sync::Lazy;

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

macro_rules! Ruleset {
    (
    $($name:ident => $package:ident),*
    ) => {
        #[allow(non_camel_case_types)]
        pub enum Rulesets {
            $($name),*
        }

        impl Rulesets {
            pub (crate) fn get_ruleset(&self) -> &'static Lazy<KeymapRuleset> {
                match self {
                    $(Self::$name => &$package::RULE),*
                }
            }
        }
    };
}

Ruleset! {
    CtrlW => ctrl_w,
    CmdlineCompletion => cmdline_completion,
    nCtrlAX => n_ctrl_a_x,
    vCtrlAX => v_ctrl_a_x
}
