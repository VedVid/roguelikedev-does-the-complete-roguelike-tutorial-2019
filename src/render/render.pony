use "../bearlibterminal"

actor Renderer
  new create(blt: Terminal val) =>
    blt.open()
    blt.set("window: size=80x25, title='roguelikedev does the complete roguelike tutorial 2019'")
    blt.refresh()
    blt.read()
    blt.close()
