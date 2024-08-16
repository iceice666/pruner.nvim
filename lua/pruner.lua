M = {}

--- @param mapping Set
--- @param mode string
local function prune(mapping, mode)
  for key, _ in pairs(mapping) do
    pcall(vim.api.nvim_set_keymap, mode, key)
  end
end

local default = require("keymap._default")


--- @param opts { [string]: string[]}
function M.setup(opts)
  local modes = { "c", "i", "o", "s", "t", "v", "x" }
  for _, mode in pairs(modes) do
    local mapping = Set:new(opts[mode]) or default[mode]
    prune(mapping, mode)
  end
end

return M
