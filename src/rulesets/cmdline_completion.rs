use super::KeymapRuleset;
use nvim_oxi::api::types::Mode;
use once_cell::sync::Lazy;

pub(crate) static RULE: Lazy<KeymapRuleset> = Lazy::new(|| {
    let sub_keys = "dinpaltg";
    let binding_list = sub_keys.chars().map(|c| format!("<C-{}>", c)).collect();

    KeymapRuleset {
        name: "cmdline_completion".to_string(),
        description: "Command-line completion. See :h cmdline-completion".to_string(),
        modes: vec![Mode::CmdLine],
        binding_list,
    }
});
