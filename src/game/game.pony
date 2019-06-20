use "../bearlibterminal"

class Game
  var blt: Terminal val = Terminal
  new create(term: Terminal val) =>
    blt = term
  fun take_input() =>
    blt.read()
    blt.close()
