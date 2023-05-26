-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DocumentFormattingClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Client capabilities of a `DocumentFormattingRequest`.

-}
data DocumentFormattingClientCapabilities = DocumentFormattingClientCapabilities 
  { {-|
  Whether formatting supports dynamic registration.

  -}
  _dynamicRegistration :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DocumentFormattingClientCapabilities

instance Aeson.ToJSON DocumentFormattingClientCapabilities where
  toJSON (DocumentFormattingClientCapabilities arg0) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON DocumentFormattingClientCapabilities where
  parseJSON = Aeson.withObject "DocumentFormattingClientCapabilities" $ \arg -> DocumentFormattingClientCapabilities <$> arg Aeson..:! "dynamicRegistration"