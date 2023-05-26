-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.InlineValueClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Client capabilities specific to inline values.

@since 3.17.0

-}
data InlineValueClientCapabilities = InlineValueClientCapabilities 
  { {-|
  Whether implementation supports dynamic registration for inline value providers.

  -}
  _dynamicRegistration :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData InlineValueClientCapabilities

instance Aeson.ToJSON InlineValueClientCapabilities where
  toJSON (InlineValueClientCapabilities arg0) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON InlineValueClientCapabilities where
  parseJSON = Aeson.withObject "InlineValueClientCapabilities" $ \arg -> InlineValueClientCapabilities <$> arg Aeson..:! "dynamicRegistration"