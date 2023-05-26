-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.InlayHintParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.ProgressToken
import qualified Language.LSP.Protocol.Internal.Types.Range
import qualified Language.LSP.Protocol.Internal.Types.TextDocumentIdentifier
import qualified Language.LSP.Protocol.Types.Common

{-|
A parameter literal used in inlay hint requests.

@since 3.17.0

-}
data InlayHintParams = InlayHintParams 
  { {-|
  An optional token that a server can use to report work done progress.

  -}
  _workDoneToken :: (Maybe Language.LSP.Protocol.Internal.Types.ProgressToken.ProgressToken)
  , {-|
  The text document.

  -}
  _textDocument :: Language.LSP.Protocol.Internal.Types.TextDocumentIdentifier.TextDocumentIdentifier
  , {-|
  The document range for which inlay hints should be computed.

  -}
  _range :: Language.LSP.Protocol.Internal.Types.Range.Range
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData InlayHintParams

instance Aeson.ToJSON InlayHintParams where
  toJSON (InlayHintParams arg0 arg1 arg2) = Aeson.object $ concat $  ["workDoneToken" Language.LSP.Protocol.Types.Common..=? arg0
    ,["textDocument" Aeson..= arg1]
    ,["range" Aeson..= arg2]]

instance Aeson.FromJSON InlayHintParams where
  parseJSON = Aeson.withObject "InlayHintParams" $ \arg -> InlayHintParams <$> arg Aeson..:! "workDoneToken" <*> arg Aeson..: "textDocument" <*> arg Aeson..: "range"