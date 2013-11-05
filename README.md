# js.lua

[![Build Status](https://travis-ci.org/gummesson/js.lua.png?branch=master)](https://travis-ci.org/gummesson/js.lua)

Basic JavaScript-like array functions for Lua.

## Why?

Because learning a new language is kind of fun.

## API

### js.push

~~~ lua
js.push(tbl, val)
~~~

Adds the `val` as the last item to the `tbl`.

#### Example

~~~ lua
js.push({1, 2}, 3)
// {1, 2, 3}
~~~

### js.pop

~~~ lua
js.tpop(tbl)
~~~

Returns and removes the last item from the `tbl`.

#### Example

~~~ lua
js.pop({1, 2, 3})
// 3
// {1, 2}
~~~

### js.shift

~~~ lua
js.shift(tbl)
~~~

Returns and removes the first item from the `tbl`.

#### Example

~~~ lua
js.shift({1, 2, 3})
// 1
// {2, 3}
~~~

### js.unshift

~~~ lua
js.unshift(tbl, val)
~~~

Adds the `val` as the first item in the `tbl`.

#### Example

~~~ lua
js.unshift({2, 3}, 1)
// {1, 2, 3}
~~~

### js.reverse

~~~ lua
js.reverse(tbl)
~~~

Returns a new table by reversing the order of the items in the `tbl`.

#### Example

~~~ lua
js.reverse({1, 2, 3})
// {3, 2, 1}
~~~

### js.splice

~~~ lua
js.splice(tbl[, start][, stop])
~~~

Returns a specific portion of the `tbl` by going from the `start` and ending at the `stop`.

#### Example

~~~ lua
js.slice({1, 2, 3, 4, 5, 6}, 3, 5)
// {3, 4, 5}
~~~

### js.join

~~~ lua
js.join(tbl[, separator])
~~~

Returns a string by joining the values in the `tbl` with the `separator`.

#### Example

~~~ lua
js.join({1, 2, 3})
// '123'

js.join({1, 2, 3}, ', ')
// '1, 2, 3'
~~~

### js.split

~~~ lua
js.split(str[, separator])
~~~

Return a table by splitting the `str` by the `separator`.

#### Example

~~~ lua
js.split('this is a test')
// {'this', 'is', 'a', 'test'}

js.split('this-is-a-test', '-')
// {'this', 'is', 'a', 'test'}
~~~

## License

The MIT License (MIT)

Copyright (c) 2013 Ellen Gummesson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
