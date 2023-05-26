-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.VersionedNotebookDocumentIdentifier where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common
import qualified Language.LSP.Protocol.Types.Uri

{-|
A versioned notebook document identifier.

@since 3.17.0

-}
data VersionedNotebookDocumentIdentifier = VersionedNotebookDocumentIdentifier 
  { {-|
  The version number of this notebook document.

  -}
  _version :: Language.LSP.Protocol.Types.Common.Int32
  , {-|
  The notebook document's uri.

  -}
  _uri :: Language.LSP.Protocol.Types.Uri.Uri
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData VersionedNotebookDocumentIdentifier

instance Aeson.ToJSON VersionedNotebookDocumentIdentifier where
  toJSON (VersionedNotebookDocumentIdentifier arg0 arg1) = Aeson.object $ concat $  [["version" Aeson..= arg0]
    ,["uri" Aeson..= arg1]]

instance Aeson.FromJSON VersionedNotebookDocumentIdentifier where
  parseJSON = Aeson.withObject "VersionedNotebookDocumentIdentifier" $ \arg -> VersionedNotebookDocumentIdentifier <$> arg Aeson..: "version" <*> arg Aeson..: "uri"