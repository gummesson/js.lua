-- Modules

local js = require('js')

-- Tests

describe('js', function()
  describe('#.push()', function()
    it('should append the numeric item to the table', function()
      local results = js.push({1, 2}, 3)
      assert.same(results, {1, 2, 3})
    end)

    it('should append the character item to the table', function()
      local results = js.push({'a', 'b'}, 'c')
      assert.same(results, {'a', 'b', 'c'})
    end)
  end)

  describe('#.pop()', function()
    it('should return and remove the last numeric item in the table', function()
      local tbl = {1, 2, 3}
      local results = js.pop(tbl)
      assert.same(results, 3)
      assert.same(tbl, {1, 2})
    end)

    it('should return and remove the last character item in the table', function()
      local tbl = {'a', 'b', 'c'}
      local results = js.pop(tbl)
      assert.same(results, 'c')
      assert.same(tbl, {'a', 'b'})
    end)
  end)

  describe('#.shift()', function()
    it('should return and remove the first numeric item in the table', function()
      local tbl = {1, 2, 3}
      local results = js.shift(tbl)
      assert.same(results, 1)
      assert.same(tbl, {2, 3})
    end)

    it('should return and remove the first character item in the table', function()
      local tbl = {'a', 'b', 'c'}
      local results = js.shift(tbl)
      assert.same(results, 'a')
      assert.same(tbl, {'b', 'c'})
    end)
  end)

  describe('#.unshift()', function()
    it('should prepend the numeric item to the table', function()
      local results = js.unshift({2, 3}, 1)
      assert.same(results, {1, 2, 3})
    end)

    it('should prepend the character item to the table', function()
      local results = js.unshift({'b', 'c'}, 'a')
      assert.same(results, {'a', 'b', 'c'})
    end)
  end)

  describe('#.reverse()', function()
    it('should reverse the order of the numeric items in the table', function()
      local results = js.reverse({1, 2, 3})
      assert.same(results, {3, 2, 1})
    end)

    it('should reverse the order of the character items in the table', function()
      local results = js.reverse({'a', 'b', 'c'})
      assert.same(results, {'c', 'b', 'a'})
    end)
  end)

  describe('#.slice()', function()
    it('return a specific portion of the numeric items of the table', function()
      local results = js.slice({1, 2, 3, 4, 5, 6}, 3, 5)
      assert.same(results, {3, 4, 5})
    end)

    it('return a clone of the numeric table', function()
      local results = js.slice({1, 2, 3, 4, 5, 6})
      assert.same(results, {1, 2, 3, 4, 5, 6})
    end)

    it('return a specific portion of the character items of the table', function()
      local results = js.slice({'a', 'b', 'c', 'd', 'e', 'f'}, 3, 5)
      assert.same(results, {'c', 'd', 'e'})
    end)

    it('return a clone of the character table', function()
      local results = js.slice({'a', 'b', 'c', 'd', 'e', 'f'})
      assert.same(results, {'a', 'b', 'c', 'd', 'e', 'f'})
    end)
  end)

  describe('#.join()', function()
    it('should join the numeric values in the table into a string', function()
      local results = js.join({1, 2, 3})
      assert.equals(results, '123')
    end)

    it('should join the numeric values in the table with the separator into a string', function()
      local results = js.join({1, 2, 3}, ', ')
      assert.equals(results, '1, 2, 3')
    end)

    it('should join the character values in the table into a string', function()
      local results = js.join({'a', 'b', 'c'})
      assert.equals(results, 'abc')
    end)

    it('should join the character values in the table with the separator into a string', function()
      local results = js.join({'a', 'b', 'c'}, ', ')
      assert.equals(results, 'a, b, c')
    end)
  end)

  describe('#.split()', function()
    it('should split the string into a table', function()
      local results = js.split('this is a test')
      assert.same(results, {'this', 'is', 'a', 'test'})
    end)

    it('should split the string (at the separator) into a table', function()
      local results = js.split('this-is-a-test', '-')
      assert.same(results, {'this', 'is', 'a', 'test'})
    end)
  end)
end)
