module GitHub where

import Effect.Aff (Aff)
import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Function.Uncurried (Fn2, runFn2)
import Effect (Effect)

type Tag = { name :: String, sha :: String }

foreign import getReleasesImpl :: Fn2 String String (Effect (Promise (Array Tag)))
getReleases :: String -> String -> Aff (Array Tag)
getReleases owner repo = Promise.toAffE (runFn2 getReleasesImpl owner repo)