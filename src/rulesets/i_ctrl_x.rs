use super::KeymapRuleset;
use nvim_oxi::api::types::Mode;
use once_cell::sync::Lazy;

pub(crate) static RULE: Lazy<KeymapRuleset> = Lazy::new(|| {
    let prefix = "<C-X>";
    let sub_keys: Vec<&str> = vec![
        "<C-D>", "<C-E>", "<C-F>", "<C-I>", "<C-K>", "<C-L>", "<C-N>", "<C-O>", "<C-P>", "<C-S>",
        "<C-T>", "<C-Y>", "<C-U>", "<C-V>", "<C-Z>", "<C-]>", "s",
    ];

    KeymapRuleset {
        name: "i_ctrl_x".to_string(),
        description: "<C-X> in insert mode".to_string(),
        modes: vec![Mode::VisualSelect],
        binding_list: sub_keys
            .iter()
            .map(|&key| format!("{}{}", prefix, key))
            .collect(),
    }
});
