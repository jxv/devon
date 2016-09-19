module Data.Devon
  ( Devon(..)
  , ToDevon(..)
  , FromDevon(..)
  ) where

import qualified Data.Map as Map
import qualified Data.Vector as Vector
import Data.Map (Map)
import Data.Text (Text)
import Data.Vector (Vector)

data Devon
  = DevonNull
  | DevonString Text
  | DevonArray (Vector Devon)
  | DevonMap (Map Text Devon)
  deriving (Show, Eq)

class ToDevon d where
  toDevon :: d -> Maybe Devon

class FromDevon d where
  fromDevon :: Devon -> d
