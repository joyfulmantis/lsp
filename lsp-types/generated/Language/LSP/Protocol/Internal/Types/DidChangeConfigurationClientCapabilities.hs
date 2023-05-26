-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DidChangeConfigurationClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data DidChangeConfigurationClientCapabilities = DidChangeConfigurationClientCapabilities 
  { {-|
  Did change configuration notification supports dynamic registration.

  -}
  _dynamicRegistration :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DidChangeConfigurationClientCapabilities

instance Aeson.ToJSON DidChangeConfigurationClientCapabilities where
  toJSON (DidChangeConfigurationClientCapabilities arg0) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON DidChangeConfigurationClientCapabilities where
  parseJSON = Aeson.withObject "DidChangeConfigurationClientCapabilities" $ \arg -> DidChangeConfigurationClientCapabilities <$> arg Aeson..:! "dynamicRegistration"