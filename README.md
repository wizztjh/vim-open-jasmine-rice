vim-open-jasmine-rice
=====================

vim plugin to open jasmine rice spec

Let's say you have a spec file like this:

```coffeescript
describe "Application.Views.Posts.IndexView", ->

  describe "render", ->
    jlet "view", -> new Application.Views.Posts.IndexView()

    beforeEach ->
      view.render()

    it "renders the 'Post' button", ->
      expect(view.$("button#post").text()).toEqual "Post"

    it "renders all the posts", ->
      expect(view.$(".post").length).toEqual 10
```

If you want to open the spec "renders all the posts", you just need to point the cursor at the line
'it "renders all the posts", ->" or the block that is being contained by the line and type
<Leader>oj (It stands for "open jasmine"), then the terminal will open the browser with the URL
"http://localhost:3000/jasmine?spec=Application.Views.Posts.IndexView%20render%20renders%20all%20the%20posts"

It also works for any "describe" block.

Usage
=====

|<leader>oj then enter | will call OpenJasmineRice|

Dependency
=========

https://github.com/bradphelan/jasminerice
