package = "js"
version = "dev-1"

source = {
  url = "git://github.com/gummesson/js.lua.git"
}

description = {
  summary = "A minimal library for using JavaScript-like array functions in Lua.",
  homepage = "http://ellengummesson.com/js.lua/",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    js = "src/js.lua"
  }
}
