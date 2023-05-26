-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.NotebookDocumentSyncClientCapabilities where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Notebook specific client capabilities.

@since 3.17.0

-}
data NotebookDocumentSyncClientCapabilities = NotebookDocumentSyncClientCapabilities 
  { {-|
  Whether implementation supports dynamic registration. If this is
  set to `true` the client supports the new
  `(TextDocumentRegistrationOptions & StaticRegistrationOptions)`
  return value for the corresponding server capability as well.

  -}
  _dynamicRegistration :: (Maybe Bool)
  , {-|
  The client supports sending execution summary data per cell.

  -}
  _executionSummarySupport :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData NotebookDocumentSyncClientCapabilities

instance Aeson.ToJSON NotebookDocumentSyncClientCapabilities where
  toJSON (NotebookDocumentSyncClientCapabilities arg0 arg1) = Aeson.object $ concat $  ["dynamicRegistration" Language.LSP.Protocol.Types.Common..=? arg0
    ,"executionSummarySupport" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON NotebookDocumentSyncClientCapabilities where
  parseJSON = Aeson.withObject "NotebookDocumentSyncClientCapabilities" $ \arg -> NotebookDocumentSyncClientCapabilities <$> arg Aeson..:! "dynamicRegistration" <*> arg Aeson..:! "executionSummarySupport"