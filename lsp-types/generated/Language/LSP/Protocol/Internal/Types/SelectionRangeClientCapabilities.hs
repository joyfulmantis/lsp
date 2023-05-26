-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.SelectionRangeClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data SelectionRangeClientCapabilities = SelectionRangeClientCapabilities 
  { {-|
  Whether implementation supports dynamic registration for selection range providers. If this is set to `true`
  the client supports the new `SelectionRangeRegistrationOptions` return value for the corresponding server
  capability as well.

  -}
  _dynamicRegistration :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData SelectionRangeClientCapabilities

instance Aeson.ToJSON SelectionRangeClientCapabilities where
  toJSON (SelectionRangeClientCapabilities arg0) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON SelectionRangeClientCapabilities where
  parseJSON = Aeson.withObject "SelectionRangeClientCapabilities" $ \arg -> SelectionRangeClientCapabilities <$> arg Aeson..:! "dynamicRegistration"