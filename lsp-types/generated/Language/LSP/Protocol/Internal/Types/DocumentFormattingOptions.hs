-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DocumentFormattingOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Provider options for a `DocumentFormattingRequest`.

-}
data DocumentFormattingOptions = DocumentFormattingOptions 
  { {-|

  -}
  _workDoneProgress :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DocumentFormattingOptions

instance Aeson.ToJSON DocumentFormattingOptions where
  toJSON (DocumentFormattingOptions arg0) = Aeson.object $ concat $  ["workDoneProgress" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON DocumentFormattingOptions where
  parseJSON = Aeson.withObject "DocumentFormattingOptions" $ \arg -> DocumentFormattingOptions <$> arg Aeson..:! "workDoneProgress"