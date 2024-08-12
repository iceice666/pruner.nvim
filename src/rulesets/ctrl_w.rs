use super::KeymapRuleset;

fn get() -> KeymapRuleset {
    let prefix = "<C-W>";
    let sub_keys: Vec<&str> = vec![
        "<C-B>", "<C-C>", "<C-D>", "<C-F>", "<C-G>", "<C-H>", "<C-I>", "<C-J>", "<C-K>", "<C-L>",
        "<C-N>", "<C-O>", "<C-P>", "<C-Q>", "<C-R>", "<C-S>", "<C-T>", "<C-V>", "<C-W>", "<C-X>",
        "<C-Z>", "<C-]>", "<C-^>", "<C-_>", "+", "-", "<", "=", ">", "H", "J", "K", "L", "P", "R",
        "S", "T", "W", "]", "^", "_", "b", "c", "d", "f", "F", "h", "i", "j", "k", "l", "n", "o",
        "p", "q", "r", "s", "t", "v", "w", "x", "z", "k", "}", "<Down>", "<Up>", "<Left>",
        "<Right>", "g]", "g}", "gf", "gF", "gt", "gT", "g<Tab>", "g<C-]>",
    ];

    KeymapRuleset {
        name: "ctrl_w".to_string(),
        description: "Window control bindings".to_string(),
        modes: vec![],
        binding_list: sub_keys
            .iter()
            .map(|&key| format!("{}{}", prefix, key))
            .collect(),
    }
}
