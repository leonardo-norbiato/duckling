-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree.

{-# LANGUAGE OverloadedStrings #-}

module Duckling.AmountOfMoney.EN.JM.Corpus
  ( allExamples
  , negativeExamples
  ) where

import Data.String
import Data.Text (Text)
import Prelude

import Duckling.AmountOfMoney.Types
import Duckling.Testing.Types

allExamples :: [Example]
allExamples = concat
  [ examples (simple JMD 1000)
             [ "a grand"
             , "1 grand"
             ]
  , examples (simple JMD 10000)
             [ "10 grand"
             , "two hundred thousand nickels"
             ]
  , examples (simple JMD 1)
             [ "four quarters"
             , "ten dimes"
             , "twenty nickels"
             ]
  , examples (simple JMD 0.1)
             [ "dime"
             , "a dime"
             , "two nickels"
             ]
  , examples (simple JMD 0.25)
             [ "quarter"
             , "a quarter"
             , "five nickels"
             ]
  , examples (simple JMD 0.05)
             [ "nickel"
             , "a nickel"
             ]
  ]
negativeExamples :: [Text]
negativeExamples =
  [ "grand"
  ]
