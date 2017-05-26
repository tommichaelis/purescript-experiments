module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log, logShow)
import Math (sqrt)

diagonal :: Number -> Number -> Number
diagonal w h = sqrt (w * w + h * h)

diagonal3 = diagonal 3.0

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow $ diagonal3 4.0
