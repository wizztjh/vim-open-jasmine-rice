vim-open-jasmine-rice
=====================

vim plugin to open jasmine rice spec

It will lookout for the first describe in a file and open `localhost:3000/jasmine?spec=LocationsIndexViewModel` if the describe description is `LocationsIndexViewModel`

```coffeescript
describe 'LocationsIndexViewModel', ->
  jlet 'locationIds', -> []
```

usage
=====

|<leader>oj then enter | will call OpenJasmineRice|

dependency
=========

https://github.com/bradphelan/jasminerice
