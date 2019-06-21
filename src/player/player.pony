use "../bearlibterminal"

class Player
  let blt: Terminal = Terminal
  var name: String
  var color: String
  var character: String
  var x: I32
  var y: I32
  new create(name': String, color': String, character': String, x': I32, y': I32) =>
    name = name'
    color = color'
    character = character'
    x = x'
    y = y'
  fun ref move(key: I32) =>
    if key == blt.tk_right then
      x = x + 1
    elseif key == blt.tk_left then
      x = x - 1
    elseif key == blt.tk_up then
      y = y - 1
    elseif key == blt.tk_down then
      y = y + 1
    end
