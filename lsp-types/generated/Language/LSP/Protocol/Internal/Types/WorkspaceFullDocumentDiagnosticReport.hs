-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.WorkspaceFullDocumentDiagnosticReport where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Internal.Types.Diagnostic
import qualified Language.LSP.Protocol.Types.Common
import qualified Language.LSP.Protocol.Types.Singletons
import qualified Language.LSP.Protocol.Types.Uri

{-|
A full document diagnostic report for a workspace diagnostic result.

@since 3.17.0

-}
data WorkspaceFullDocumentDiagnosticReport = WorkspaceFullDocumentDiagnosticReport 
  { {-|
  A full document diagnostic report.

  -}
  _kind :: (Language.LSP.Protocol.Types.Singletons.AString "full")
  , {-|
  An optional result id. If provided it will
  be sent on the next diagnostic request for the
  same document.

  -}
  _resultId :: (Maybe Data.Text.Text)
  , {-|
  The actual items.

  -}
  _items :: [Language.LSP.Protocol.Internal.Types.Diagnostic.Diagnostic]
  , {-|
  The URI for which diagnostic information is reported.

  -}
  _uri :: Language.LSP.Protocol.Types.Uri.Uri
  , {-|
  The version number for which the diagnostics are reported.
  If the document is not marked as open `null` can be provided.

  -}
  _version :: (Language.LSP.Protocol.Types.Common.Int32 Language.LSP.Protocol.Types.Common.|? Language.LSP.Protocol.Types.Common.Null)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData WorkspaceFullDocumentDiagnosticReport

instance Aeson.ToJSON WorkspaceFullDocumentDiagnosticReport where
  toJSON (WorkspaceFullDocumentDiagnosticReport arg0 arg1 arg2 arg3 arg4) = Aeson.object $ concat $  [["kind" Aeson..= arg0]
    ,"resultId" Language.LSP.Protocol.Types.Common..=? arg1
    ,["items" Aeson..= arg2]
    ,["uri" Aeson..= arg3]
    ,["version" Aeson..= arg4]]

instance Aeson.FromJSON WorkspaceFullDocumentDiagnosticReport where
  parseJSON = Aeson.withObject "WorkspaceFullDocumentDiagnosticReport" $ \arg -> WorkspaceFullDocumentDiagnosticReport <$> arg Aeson..: "kind" <*> arg Aeson..:! "resultId" <*> arg Aeson..: "items" <*> arg Aeson..: "uri" <*> arg Aeson..: "version"