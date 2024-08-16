local rulesets = {
  -- <C-X>
  "<C-X><C-D>", "<C-X><C-E>", "<C-X><C-F>", "<C-X><C-I>", "<C-X><C-K>", "<C-X><C-L>", "<C-X><C-N>", "<C-X><C-O>",
  "<C-X><C-P>", "<C-X><C-S>", "<C-X><C-T>", "<C-X><C-Y>", "<C-X><C-U>", "<C-X><C-V>", "<C-X><C-Z>", "<C-X><C-]>",
  "<C-X>s",
  -- <C-G>
  "<C-G><C-K>", "<C-G><C-J>", "<C-G><Down>", "<C-G><Up>",
  "<C-G>u", "<C-G>k", "<C-G>j", "<C-G>U",
  -- <C-\_>
  "<C-_><C-N>",
  "<C-_><C-G>",
  "<C-_><C-O>",
}


return require("set"):new(rulesets)
