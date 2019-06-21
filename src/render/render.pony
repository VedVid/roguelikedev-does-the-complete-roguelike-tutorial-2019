use "../bearlibterminal"
use "../player"

class Renderer
  var blt: Terminal val
  new create(blt': Terminal val) =>
    blt = blt'
  fun initialize() =>
    blt.open()
    blt.set("window: size=80x25, title='roguelikedev does the complete roguelike tutorial 2019'")
    blt.refresh()
  fun update(player: Player) =>
    blt.clear()
    let txt: String = "[color=" + player.color + "]" + player.character + "[/color]"
    blt.print(player.x, player.y, txt)
    blt.refresh()
