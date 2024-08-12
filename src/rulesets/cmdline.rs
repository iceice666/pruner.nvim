use super::KeymapRuleset;
use nvim_oxi::api::types::Mode;
use once_cell::sync::Lazy;

pub(crate) static RULE: Lazy<KeymapRuleset> = Lazy::new(|| {
    let mut binding_list: Vec<String> = "abcdefghijklmnpqrtuvwyz[]^"
        .chars()
        .map(|c| format!("<C-{}>", c))
        .collect();
    binding_list.extend("fpwalro".chars().map(|c| format!("<C-R><C-{}>", c)));
    binding_list.extend(
        [
            "<C-R>=",
            "<C-\\>e",
            "<C-S-V>",
            "<C-S-Q>",
            "<C-\\><C-N>",
            "<C-\\><C-G>",
        ]
        .iter()
        .map(|s| s.to_string()),
    );

    KeymapRuleset {
        name: "cmdline".to_string(),
        description: "All cmdline keymaps".to_string(),
        modes: vec![Mode::CmdLine],
        binding_list,
    }
});
