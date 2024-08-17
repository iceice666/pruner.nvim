M = {}

--- @param mapping string[]
--- @param mode string
local function prune(mapping, mode)
  for key, _ in pairs(mapping) do
    pcall(vim.keymap.set, mode, key, "<nop>", { unique = true, desc = "pruned" })
  end
end

local default = require("keymap._default")

--- @param opts { [string]: string[]}
function M.setup(opts)
  opts = opts or {}
  local modes = { "c", "i", "o", "s", "t", "v", "x", "n" }
  for _, mode in pairs(modes) do
    local mapping = opts[mode] or default[mode]
    vim.notify("Pruning " .. mode .. " mappings")
    vim.print(mapping)
    prune(mapping, mode)
  end
end

return M
