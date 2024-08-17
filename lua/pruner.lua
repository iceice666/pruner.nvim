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

function M.disable_defaults()
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
  vim.cmd(":unmap <C-W>")
  vim.cmd(":unmap <C-U>")
end
return M
