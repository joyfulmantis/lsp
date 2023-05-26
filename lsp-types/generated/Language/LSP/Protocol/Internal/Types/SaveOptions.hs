-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.SaveOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Save options.

-}
data SaveOptions = SaveOptions 
  { {-|
  The client is supposed to include the content on save.

  -}
  _includeText :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData SaveOptions

instance Aeson.ToJSON SaveOptions where
  toJSON (SaveOptions arg0) = Aeson.object $ concat $  ["includeText" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON SaveOptions where
  parseJSON = Aeson.withObject "SaveOptions" $ \arg -> SaveOptions <$> arg Aeson..:! "includeText"