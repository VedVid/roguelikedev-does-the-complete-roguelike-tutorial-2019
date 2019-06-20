use "../bearlibterminal"

actor Game
  var blt: Terminal val = Terminal
  new create(term: Terminal val) =>
    blt = term
  be take_input() =>
    blt.read()
    blt.close()
