-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DeclarationClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
@since 3.14.0

-}
data DeclarationClientCapabilities = DeclarationClientCapabilities 
  { {-|
  Whether declaration supports dynamic registration. If this is set to `true`
  the client supports the new `DeclarationRegistrationOptions` return value
  for the corresponding server capability as well.

  -}
  _dynamicRegistration :: (Maybe Bool)
  , {-|
  The client supports additional metadata in the form of declaration links.

  -}
  _linkSupport :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DeclarationClientCapabilities

instance Aeson.ToJSON DeclarationClientCapabilities where
  toJSON (DeclarationClientCapabilities arg0 arg1) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0
    ,"linkSupport" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON DeclarationClientCapabilities where
  parseJSON = Aeson.withObject "DeclarationClientCapabilities" $ \arg -> DeclarationClientCapabilities <$> arg Aeson..:! "dynamicRegistration" <*> arg Aeson..:! "linkSupport"