vim-open-jasmine-rice
=====================

Open jasmine rice spec from vim.

Description
===========

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
'it "renders all the posts", ->" or the block that is being contained by the line and type the command.

The terminal will open the browser with the URL
"http://localhost:3000/jasmine?spec=Application.Views.Posts.IndexView%20render%20renders%20all%20the%20posts"

It also works for any "describe" block.

Usage
=====

Type |<leader>oj in any line in a jasmine spec file.

oj stands for "open jasmine."

Dependency
=========

https://github.com/bradphelan/jasminerice
