-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.NotebookDocumentFilter where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row as Row
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|
A notebook document filter denotes a notebook document by
different properties. The properties will be match
against the notebook's URI (same as with documents)

@since 3.17.0

-}
newtype NotebookDocumentFilter = NotebookDocumentFilter ((Row.Rec ("notebookType" Row..== Data.Text.Text Row..+ ("scheme" Row..== (Maybe Data.Text.Text) Row..+ ("pattern" Row..== (Maybe Data.Text.Text) Row..+ Row.Empty)))) Language.LSP.Protocol.Types.Common.|? ((Row.Rec ("notebookType" Row..== (Maybe Data.Text.Text) Row..+ ("scheme" Row..== Data.Text.Text Row..+ ("pattern" Row..== (Maybe Data.Text.Text) Row..+ Row.Empty)))) Language.LSP.Protocol.Types.Common.|? (Row.Rec ("notebookType" Row..== (Maybe Data.Text.Text) Row..+ ("scheme" Row..== (Maybe Data.Text.Text) Row..+ ("pattern" Row..== Data.Text.Text Row..+ Row.Empty))))))
  deriving stock (Show, Eq, Ord, Generic)
  deriving newtype (DeepSeq.NFData, Aeson.ToJSON, Aeson.FromJSON)