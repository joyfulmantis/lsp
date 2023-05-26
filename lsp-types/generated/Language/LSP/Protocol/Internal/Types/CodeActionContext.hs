-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.CodeActionContext where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.CodeActionKind
import qualified Language.LSP.Protocol.Internal.Types.CodeActionTriggerKind
import qualified Language.LSP.Protocol.Internal.Types.Diagnostic
import qualified Language.LSP.Protocol.Types.Common

{-|
Contains additional diagnostic information about the context in which
a `CodeActionProvider.provideCodeActions` is run.

-}
data CodeActionContext = CodeActionContext 
  { {-|
  An array of diagnostics known on the client side overlapping the range provided to the
  `textDocument/codeAction` request. They are provided so that the server knows which
  errors are currently presented to the user for the given range. There is no guarantee
  that these accurately reflect the error state of the resource. The primary parameter
  to compute code actions is the provided range.

  -}
  _diagnostics :: [Language.LSP.Protocol.Internal.Types.Diagnostic.Diagnostic]
  , {-|
  Requested kind of actions to return.

  Actions not of this kind are filtered out by the client before being shown. So servers
  can omit computing them.

  -}
  _only :: (Maybe [Language.LSP.Protocol.Internal.Types.CodeActionKind.CodeActionKind])
  , {-|
  The reason why code actions were requested.

  @since 3.17.0

  -}
  _triggerKind :: (Maybe Language.LSP.Protocol.Internal.Types.CodeActionTriggerKind.CodeActionTriggerKind)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData CodeActionContext

instance Aeson.ToJSON CodeActionContext where
  toJSON (CodeActionContext arg0 arg1 arg2) = Aeson.object $ concat $  [["diagnostics" Aeson..= arg0]
    ,"only" Language.LSP.Protocol.Types.Common..=? arg1
    ,"triggerKind" Language.LSP.Protocol.Types.Common..=? arg2]

instance Aeson.FromJSON CodeActionContext where
  parseJSON = Aeson.withObject "CodeActionContext" $ \arg -> CodeActionContext <$> arg Aeson..: "diagnostics" <*> arg Aeson..:! "only" <*> arg Aeson..:! "triggerKind"