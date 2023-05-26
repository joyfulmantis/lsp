-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.InlayHintOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Inlay hint options used during static registration.

@since 3.17.0

-}
data InlayHintOptions = InlayHintOptions 
  { {-|

  -}
  _workDoneProgress :: (Maybe Bool)
  , {-|
  The server provides support to resolve additional
  information for an inlay hint item.

  -}
  _resolveProvider :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData InlayHintOptions

instance Aeson.ToJSON InlayHintOptions where
  toJSON (InlayHintOptions arg0 arg1) = Aeson.object $ concat $  ["workDoneProgress" Language.LSP.Protocol.Types.Common..=? arg0
    ,"resolveProvider" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON InlayHintOptions where
  parseJSON = Aeson.withObject "InlayHintOptions" $ \arg -> InlayHintOptions <$> arg Aeson..:! "workDoneProgress" <*> arg Aeson..:! "resolveProvider"