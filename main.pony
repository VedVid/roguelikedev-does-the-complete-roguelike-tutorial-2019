use "src/bearlibterminal"
use "src/render"
use "src/game"
use "src/player"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
    renderer.initialize()
    let gamer: Game = Game(blt)
    var player: Player = Player("player", "white", "@", 1, 1)
    var key: I32 = 0
    var loop: Bool = true
    while loop == true do
      renderer.update(player)
      key = gamer.take_input()
      if key == blt.tk_escape then
        loop = false
      end
    end
    blt.close()
