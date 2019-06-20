use "src/bearlibterminal"
use "src/render"

actor Main
  let blt: Terminal val = Terminal
  new create(env: Env) =>
    let renderer: Renderer = Renderer(blt)
