--
-- # js
--
-- Basic JavaScript-like array functions for Lua.
--
-- **License:** MIT  
--  **Source:** [GitHub](https://github.com/gummesson/js.lua)
--

-- ## js
--
-- The namespace.
--
local js = {}

-- ### js.push
--
-- Add the `val` as the last item to the `tbl`.
--
-- - `tbl` is a table.
-- - `val` is a value.
--
function js.push(tbl, val)
  table.insert(tbl, val)
  return tbl
end

-- ### js.pop
--
-- Return and remove the last item in the `tbl`.
--
-- - `tbl` is a table.
--
function js.pop(tbl)
  local last = tbl[#tbl]
  table.remove(tbl, #tbl)
  return last
end

-- ### js.shift
--
-- Return and remove the first item in the `tbl`.
--
-- - `tbl` is a table.
--
function js.shift(tbl)
  local first = tbl[1]
  table.remove(tbl, 1)
  return first
end

-- ### js.unshift
--
-- Add the `val` as the first item in the `tbl`.
--
-- - `tbl` is a table.
-- - `val` is a value.
--
function js.unshift(tbl, val)
  table.insert(tbl, 1, val)
  return tbl
end

-- ### js.reverse
--
-- Return a new table by reversing the order of the items in the `tbl`.
--
-- - `tbl` is a table.
--
function js.reverse(tbl)
  local results = {}
  for _, val in ipairs(tbl) do
    table.insert(results, 1, val)
  end
  return results
end

-- ### js.join
--
-- Return a string by joining the values in the `tbl` with the `separator`.
--
-- - `tbl`       is a table.
-- ' `separator` is a string.
--
function js.join(tbl, separator)
  separator = separator or ''
  return table.concat(tbl, separator)
end

-- ### js.split
--
-- Return a table by splitting the `str` by the `separator`.
--
-- - `tbl`      is a table.
--  `separator` is a string.
--
function js.split(str, separator)
  local results = {}
  local i = 1
  separator = separator or '%s'
  for val in str:gmatch('([^' .. separator .. ']+)') do
    results[i] = val
    i = i + 1
  end
  return results
end

-- ### js.slice
--
-- Return a specific portion of the `tbl`.
--
-- - `tbl`   is a table.
-- - `start` is a number.
-- - `stop`  is a number.
--
function js.slice(tbl, start, stop)
  local results = {}
  local length  = #tbl
  start = start or 1
  stop  = stop or length
  for i = start, stop do
    table.insert(results, tbl[i])
  end
  return results
end

-- ## Exports
--
-- Export `js` as a Lua module.
--
return js
