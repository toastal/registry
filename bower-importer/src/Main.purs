module Main where

import Prelude

import Effect (Effect)
import Effect.Aff as Aff
import Effect.Class.Console (logShow, log)
import GitHub as GitHub

main :: Effect Unit
main = Aff.launchAff_ do
  log "🍝"
  releases <- GitHub.getReleases "purescript-contrib" "purescript-aff"
  logShow releases
