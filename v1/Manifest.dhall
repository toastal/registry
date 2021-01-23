{-

The schema for `purs.json` files.

This object holds all the info that the Registry needs to know about it.

-}

let Map = (./Prelude.dhall).Map.Type

let Target = ./Target.dhall

let Manifest =
      -- The name of the package
      { name : Text
      -- The SPDX code for the license under which the code is released
      , license : Text
      -- The version of this package
      , version : Text
      -- The revision number for this Manifest in the current version
      , revision : Natural
      -- The git repo the package is published at
      , repository : ./Repo.dhall
      -- Compilation targets for the Package
      , targets : Map Text Target
      }

in Manifest
