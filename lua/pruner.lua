M = {}

--- @param mapping string[]
--- @param mode string
local function prune(mapping, mode)
  for _, key in pairs(mapping) do
    -- try to remove first
    local _, _ = pcall(vim.keymap.del, mode, key)
    -- then mark as pruned
    local _, _ = pcall(vim.keymap.set, mode, key, "<nop>", { nowait = true, desc = "<==|PRUNED|==>" })
  end
end

local default = require("keymap._default")

--- @param opts { [string]: string[]}
function M.setup(opts)
  opts = opts or {}
  local modes = { "c", "i", "o", "s", "t", "v", "x", "n" }
  for _, mode in pairs(modes) do
    local mapping = opts[mode] or default[mode]
    prune(mapping, mode)
  end
end

function M.disable_defaults()
  pcall(function()
    vim.cmd(":unmap Y")
    vim.cmd(":unmap *")
    vim.cmd(":unmap #")
    vim.cmd(":unmap @")
    vim.cmd(":unmap Q")
    vim.cmd(":unmap &")
    vim.cmd(":unmap gc")
    vim.cmd(":unmap gcc")
    vim.cmd(":unmap K")
    vim.cmd(":unmap <C-W>d")
    vim.cmd(":unmap <C-L>")
  end)
end

return M
