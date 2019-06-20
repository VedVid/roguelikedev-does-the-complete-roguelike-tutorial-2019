use "src/bearlibterminal"
use "src/render"
use "src/game"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
    let gamer: Game = Game(blt)
    gamer.take_input()
