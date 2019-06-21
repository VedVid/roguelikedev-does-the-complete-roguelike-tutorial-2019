use "src/bearlibterminal"
use "src/render"
use "src/game"
use "src/player"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
    let gamer: Game = Game(blt)
    var player: Player = Player("player", "white", "@")
    var key: I32 = 0
    var loop: Bool = true
    while loop == true do
      key = gamer.take_input()
      if key > 0 then
        blt.print(1, 1, "[color=white]@[/color]")
        blt.refresh()
        blt.read()
        loop = false
      end
    end
    blt.close()
