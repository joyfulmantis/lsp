-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DidChangeConfigurationRegistrationOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data DidChangeConfigurationRegistrationOptions = DidChangeConfigurationRegistrationOptions 
  { {-|

  -}
  _section :: (Maybe (Data.Text.Text Language.LSP.Protocol.Types.Common.|? [Data.Text.Text]))
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DidChangeConfigurationRegistrationOptions

instance Aeson.ToJSON DidChangeConfigurationRegistrationOptions where
  toJSON (DidChangeConfigurationRegistrationOptions arg0) = Aeson.object $ concat $  ["section" Language.LSP.Protocol.Types.Common..=? arg0]

instance Aeson.FromJSON DidChangeConfigurationRegistrationOptions where
  parseJSON = Aeson.withObject "DidChangeConfigurationRegistrationOptions" $ \arg -> DidChangeConfigurationRegistrationOptions <$> arg Aeson..:! "section"