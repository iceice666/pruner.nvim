use super::KeymapRuleset;
use nvim_oxi::api::types::Mode;
use once_cell::sync::Lazy;

pub(crate) static RULE: Lazy<KeymapRuleset> = Lazy::new(|| KeymapRuleset {
    name: "n_ctrl_a_x".to_string(),
    description: "<C-X> & <C-A> in normal mode".to_string(),
    modes: vec![Mode::Normal],
    binding_list: ["<C-X>", "<C-A>"].iter().map(|&s| s.to_string()).collect(),
});
