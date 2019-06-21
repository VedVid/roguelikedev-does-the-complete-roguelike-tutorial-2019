use "../bearlibterminal"

class Game
  var blt: Terminal val
  new create(blt': Terminal val) =>
    blt = blt'
  fun take_input(): I32 =>
    blt.read()
