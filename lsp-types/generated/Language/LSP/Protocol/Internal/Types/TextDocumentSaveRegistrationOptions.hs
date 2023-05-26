-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.TextDocumentSaveRegistrationOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.DocumentSelector
import qualified Language.LSP.Protocol.Types.Common

{-|
Save registration options.

-}
data TextDocumentSaveRegistrationOptions = TextDocumentSaveRegistrationOptions 
  { {-|
  A document selector to identify the scope of the registration. If set to null
  the document selector provided on the client side will be used.

  -}
  _documentSelector :: (Language.LSP.Protocol.Internal.Types.DocumentSelector.DocumentSelector Language.LSP.Protocol.Types.Common.|? Language.LSP.Protocol.Types.Common.Null)
  , {-|
  The client is supposed to include the content on save.

  -}
  _includeText :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData TextDocumentSaveRegistrationOptions

instance Aeson.ToJSON TextDocumentSaveRegistrationOptions where
  toJSON (TextDocumentSaveRegistrationOptions arg0 arg1) = Aeson.object $ concat $  [["documentSelector" Aeson..= arg0]
    ,"includeText" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON TextDocumentSaveRegistrationOptions where
  parseJSON = Aeson.withObject "TextDocumentSaveRegistrationOptions" $ \arg -> TextDocumentSaveRegistrationOptions <$> arg Aeson..: "documentSelector" <*> arg Aeson..:! "includeText"