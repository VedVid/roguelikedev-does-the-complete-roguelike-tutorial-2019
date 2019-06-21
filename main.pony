use "src/bearlibterminal"
use "src/render"
use "src/game"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
    let gamer: Game = Game(blt)
    var key: I32 = 0
    var loop: Bool = true
    while loop == true do
      key = gamer.take_input()
      if key > 0 then
        loop = false
      end
    end
    blt.close()
