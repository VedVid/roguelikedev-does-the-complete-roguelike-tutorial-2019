use "../bearlibterminal"

actor Game
  var term: Terminal val = Terminal
  new create(blt: Terminal val) =>
    term = blt
