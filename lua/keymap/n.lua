local rulesets = {
  -- <C-W> window control
  "<C-W><C-B>", "<C-W><C-C>", "<C-W><C-D>", "<C-W><C-F>", "<C-W><C-G>", "<C-W><C-H>", "<C-W><C-I>", "<C-W><C-J>",
  "<C-W><C-K>", "<C-W><C-L>", "<C-W><C-N>", "<C-W><C-O>", "<C-W><C-P>", "<C-W><C-Q>", "<C-W><C-R>", "<C-W><C-S>",
  "<C-W><C-T>", "<C-W><C-V>", "<C-W><C-W>", "<C-W><C-X>", "<C-W><C-Z>", "<C-W><C-]>", "<C-W><C-^>", "<C-W><C-_>",
  "<C-W>+", "<C-W>-", "<C-W><", "<C-W>=", "<C-W>>", "<C-W>H", "<C-W>J", "<C-W>K", "<C-W>L", "<C-W>P", "<C-W>R", "<C-W>S",
  "<C-W>T", "<C-W>W", "<C-W>]", "<C-W>^", "<C-W>_", "<C-W>b", "<C-W>c", "<C-W>d", "<C-W>f",
  "<C-W>F", "<C-W>h", "<C-W>i", "<C-W>j", "<C-W>k", "<C-W>l", "<C-W>n", "<C-W>o", "<C-W>p", "<C-W>q", "<C-W>r", "<C-W>s",
  "<C-W>t", "<C-W>v", "<C-W>w", "<C-W>x", "<C-W>z", "<C-W>k", "<C-W>}", "<C-W><Down>", "<C-W><Up>", "<C-W><Left>",
  "<C-W><Right>", "<C-W>g]", "<C-W>g}", "<C-W>gf", "<C-W>gF", "<C-W>gt", "<C-W>gT", "<C-W>g<Tab>", "<C-W>g<C-]>",
}



return require("set"):new(rulesets)
