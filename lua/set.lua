--- @class Set
--- @field private inner { [string]: boolean|nil}
Set = { inner = {} }
Set.__index = Set

--- @param t string[]
function Set:new(t)
  local obj = {}
  setmetatable(obj, Set)
  for _, l in ipairs(t) do obj.inner[l] = true end
  return obj
end

--- @param x string
function Set:contains(x)
  return self.inner[x] == true
end

--- @param x string
function Set:insert(x)
  self.inner[x] = true
  return self
end

--- @param x string
function Set:remove(x)
  self.inner[x] = nil
  return self
end

--- @return integer
function Set:size()
  local count = 0
  for _, _ in pairs(self.inner) do count = count + 1 end
  return count
end

--- @param a Set
function Set:add(a)
  local res = Set:new({})
  for k, _ in pairs(self.inner) do res:insert(k) end
  for k, _ in pairs(a.inner) do res:insert(k) end
  return res
end

--- @param a Set
function Set:minus(a)
  local res = Set:new({})
  for k, _ in pairs(self.inner) do
    if not a:contains(k) then res:insert(k) end
  end
  return res
end

function Set:__pairs()
  return next, self.inner, nil
end

return Set
