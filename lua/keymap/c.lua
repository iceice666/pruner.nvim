local rulesets = {
  "<C-R>=",
  "<C-\\>e",
  "<C-S-V>",
  "<C-S-Q>",
  "<C-\\><C-N>",
  "<C-\\><C-G>",

  "<C-R><C-f>",
  "<C-R><C-p>",
  "<C-R><C-w>",
  "<C-R><C-a>",
  "<C-R><C-l>",
  "<C-R><C-r>",
  "<C-R><C-o>",

  "<C-a>", "<C-b>", "<C-c>", "<C-d>", "<C-e>", "<C-f>", "<C-g>",
  "<C-h>", "<C-i>", "<C-j>", "<C-k>", "<C-l>", "<C-m>", "<C-n>",
  "<C-p>", "<C-q>", "<C-r>", "<C-t>", "<C-u>", "<C-v>", "<C-w>",
  "<C-y>", "<C-z>", "<C-[>", "<C-]>", "<C-^>",
}

return require("set"):new(rulesets)
