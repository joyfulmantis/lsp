-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.FoldingRangeOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data FoldingRangeOptions = FoldingRangeOptions 
  { {-|

  -}
  _workDoneProgress :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData FoldingRangeOptions

instance Aeson.ToJSON FoldingRangeOptions where
  toJSON (FoldingRangeOptions arg0) = Aeson.object $ concat $  ["workDoneProgress" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON FoldingRangeOptions where
  parseJSON = Aeson.withObject "FoldingRangeOptions" $ \arg -> FoldingRangeOptions <$> arg Aeson..:! "workDoneProgress"