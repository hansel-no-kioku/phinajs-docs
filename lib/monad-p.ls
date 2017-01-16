#------------------------------------------------------------------------------
# Promise monad

require! {
  \prelude-ls : {map}
  \./monad
}

pure-p = return-p = Promise~resolve
fail-p = Promise~reject

fmap-p = (f, p) --> p.then f
bind-p = (p, f) --> p.then f

catch-p = (p, f) --> p.catch f

seq-p = Promise~all
map-m-p = (f, l) --> seq-p map f, l

monad-p = monad do
  pure-p
  fail-p
  fmap-p
  bind-p

promisize = (f, a) --> new Promise (d, c) -> f d, c, a

promisize-api = (f, a) --> new Promise (d, c) ->
  err, data <- f a
  unless err then d data else c err

export
  pure-p, return-p, fail-p
  fmap-p, bind-p, catch-p, seq-p, map-m-p
  monad-p
  promisize, promisize-api
