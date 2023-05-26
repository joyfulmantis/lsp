-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.RegularExpressionsClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|
Client capabilities specific to regular expressions.

@since 3.16.0

-}
data RegularExpressionsClientCapabilities = RegularExpressionsClientCapabilities 
  { {-|
  The engine's name.

  -}
  _engine :: Data.Text.Text
  , {-|
  The engine's version.

  -}
  _version :: (Maybe Data.Text.Text)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData RegularExpressionsClientCapabilities

instance Aeson.ToJSON RegularExpressionsClientCapabilities where
  toJSON (RegularExpressionsClientCapabilities arg0 arg1) = Aeson.object $ concat $  [["engine" Aeson..= arg0]
    ,"version" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON RegularExpressionsClientCapabilities where
  parseJSON = Aeson.withObject "RegularExpressionsClientCapabilities" $ \arg -> RegularExpressionsClientCapabilities <$> arg Aeson..: "engine" <*> arg Aeson..:! "version"