local utils = {}

function utils.merge_tables(t1, t2)
  local result = {}
  for _, v in ipairs(t1) do
    table.insert(result, v)
  end
  for _, v in ipairs(t2) do
    table.insert(result, v)
  end
  return result
end

function utils.has_value(tab, val)
  for _index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end

  return false
end

function utils.nnoremap(lhs, rhs)
  vim.keymap.set("n", lhs, rhs, { silent = true })
end

function utils.xnoremap(lhs, rhs)
  vim.keymap.set("x", lhs, rhs, { silent = true })
end

return utils
