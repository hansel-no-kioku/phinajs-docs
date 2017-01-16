#------------------------------------------------------------------------------
# Monad

module.exports = (pure, fail, fmap, bind) ->
  ap = (pf, p) --> pf `bind` (f) -> f `fmap` p
  seq = (m, f) --> m `bind` -> f!
  kcmp = (f, g) --> (x) -> (f x) `bind` g

  {
    pure
    return: pure
    fail
    fmap
    bind
    ap
    seq
    kcmp
    '<$>': fmap
    '>>=': bind
    '<*>': ap
    '*>': seq
    '>>': seq
    '>=>': kcmp
  }
