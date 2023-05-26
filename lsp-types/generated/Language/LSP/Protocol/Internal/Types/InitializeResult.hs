-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.InitializeResult where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row as Row
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Internal.Types.ServerCapabilities
import qualified Language.LSP.Protocol.Types.Common

{-|
The result returned from an initialize request.

-}
data InitializeResult = InitializeResult 
  { {-|
  The capabilities the language server provides.

  -}
  _capabilities :: Language.LSP.Protocol.Internal.Types.ServerCapabilities.ServerCapabilities
  , {-|
  Information about the server.

  @since 3.15.0

  -}
  _serverInfo :: (Maybe (Row.Rec ("name" Row..== Data.Text.Text Row..+ ("version" Row..== (Maybe Data.Text.Text) Row..+ Row.Empty))))
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData InitializeResult

instance Aeson.ToJSON InitializeResult where
  toJSON (InitializeResult arg0 arg1) = Aeson.object $ concat $  [["capabilities" Aeson..= arg0]
    ,"serverInfo" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON InitializeResult where
  parseJSON = Aeson.withObject "InitializeResult" $ \arg -> InitializeResult <$> arg Aeson..: "capabilities" <*> arg Aeson..:! "serverInfo"