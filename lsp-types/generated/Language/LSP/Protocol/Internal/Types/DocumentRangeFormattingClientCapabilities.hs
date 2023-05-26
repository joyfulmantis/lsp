-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DocumentRangeFormattingClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Client capabilities of a `DocumentRangeFormattingRequest`.

-}
data DocumentRangeFormattingClientCapabilities = DocumentRangeFormattingClientCapabilities 
  { {-|
  Whether range formatting supports dynamic registration.

  -}
  _dynamicRegistration :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DocumentRangeFormattingClientCapabilities

instance Aeson.ToJSON DocumentRangeFormattingClientCapabilities where
  toJSON (DocumentRangeFormattingClientCapabilities arg0) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON DocumentRangeFormattingClientCapabilities where
  parseJSON = Aeson.withObject "DocumentRangeFormattingClientCapabilities" $ \arg -> DocumentRangeFormattingClientCapabilities <$> arg Aeson..:! "dynamicRegistration"