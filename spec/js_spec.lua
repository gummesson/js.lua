-- Modules

local js = require('js')

-- Tests

describe('js', function()
  describe('.push()', function()
    it('should append the item to the table', function()
      local results = js.push({1, 2}, 3)
      assert.same(results, {1, 2, 3})
    end)
  end)

  describe('.pop()', function()
    it('should return and remove the last item in the table', function()
      local tbl = {1, 2, 3}
      local results = js.pop(tbl)
      assert.same(results, 3)
      assert.same(tbl, {1, 2})
    end)
  end)

  describe('.shift()', function()
    it('should return and remove the first item in the table', function()
      local tbl = {1, 2, 3}
      local results = js.shift(tbl)
      assert.same(results, 1)
      assert.same(tbl, {2, 3})
    end)
  end)

  describe('.unshift()', function()
    it('should prepend the item to the table', function()
      local results = js.unshift({2, 3}, 1)
      assert.same(results, {1, 2, 3})
    end)
  end)

  describe('.reverse()', function()
    it('should reverse the order of the table', function()
      local results = js.reverse({1, 2, 3})
      assert.same(results, {3, 2, 1})
    end)
  end)

  describe('.slice()', function()
    it('return a specific portion of the table', function()
      local results = js.slice({1, 2, 3, 4, 5, 6}, 3, 5)
      assert.same(results, {3, 4, 5})
    end)

    it('return a clone of the table', function()
      local results = js.slice({1, 2, 3, 4, 5, 6})
      assert.same(results, {1, 2, 3, 4, 5, 6})
    end)
  end)

  describe('.join()', function()
    it('should join the values in the table into a string', function()
      local results = js.join({1, 2, 3})
      assert.equals(results, '123')
    end)

    it('should join the values in the table (with the separator) into a string', function()
      local results = js.join({1, 2, 3}, ', ')
      assert.equals(results, '1, 2, 3')
    end)
  end)

  describe('.split()', function()
    it('should split the string into a table', function()
      local results = js.split('This is a test')
      assert.same(results, {'This', 'is', 'a', 'test'})
    end)

    it('should split the string (at the separator) into a table', function()
      local results = js.split('This-is-a-test', '-')
      assert.same(results, {'This', 'is', 'a', 'test'})
    end)
  end)
end)
