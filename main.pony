use "src/bearlibterminal"
use "src/render"
use "src/game"
use "src/player"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
    let gamer: Game = Game(blt)
    var player: Player = Player("player", "white", "@", 1, 1)
    var key: I32 = 0
    var loop: Bool = true
    while loop == true do
      key = gamer.take_input()
      if key > 0 then
        let txt: String = "[color=" + player.color + "]" + player.character + "[/color]"
        blt.print(player.x, player.y, txt)
        blt.refresh()
        blt.read()
        loop = false
      end
    end
    blt.close()
