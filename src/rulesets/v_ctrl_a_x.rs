use super::KeymapRuleset;
use nvim_oxi::api::types::Mode;
use once_cell::sync::Lazy;

pub(crate) static RULE: Lazy<KeymapRuleset> = Lazy::new(|| KeymapRuleset {
    name: "v_ctrl_a_x".to_string(),
    description: "<C-X> & <C-A> in visual mode".to_string(),
    modes: vec![Mode::VisualSelect],
    binding_list: ["<C-X>", "<C-A>", "g<C-X>", "g<C-A>"]
        .iter()
        .map(|&s| s.to_string())
        .collect(),
});
