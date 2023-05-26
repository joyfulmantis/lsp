-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.SemanticTokensDelta where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Internal.Types.SemanticTokensEdit
import qualified Language.LSP.Protocol.Types.Common

{-|
@since 3.16.0

-}
data SemanticTokensDelta = SemanticTokensDelta 
  { {-|

  -}
  _resultId :: (Maybe Data.Text.Text)
  , {-|
  The semantic token edits to transform a previous result into a new result.

  -}
  _edits :: [Language.LSP.Protocol.Internal.Types.SemanticTokensEdit.SemanticTokensEdit]
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData SemanticTokensDelta

instance Aeson.ToJSON SemanticTokensDelta where
  toJSON (SemanticTokensDelta arg0 arg1) = Aeson.object $ concat $  ["resultId" Language.LSP.Protocol.Types.Common..=? arg0
    ,["edits" Aeson..= arg1]]

instance Aeson.FromJSON SemanticTokensDelta where
  parseJSON = Aeson.withObject "SemanticTokensDelta" $ \arg -> SemanticTokensDelta <$> arg Aeson..:! "resultId" <*> arg Aeson..: "edits"