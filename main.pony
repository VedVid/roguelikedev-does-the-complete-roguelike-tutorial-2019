use "src/bearlibterminal"
use "src/render"
use "src/game"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
    let gamer: Game = Game(blt)
    var loop: Bool = true
    while loop == true do
      gamer.take_input()
    end
    blt.close()
