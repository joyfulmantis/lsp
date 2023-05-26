-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.ChangeAnnotation where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|
Additional information that describes document changes.

@since 3.16.0

-}
data ChangeAnnotation = ChangeAnnotation 
  { {-|
  A human-readable string describing the actual change. The string
  is rendered prominent in the user interface.

  -}
  _label :: Data.Text.Text
  , {-|
  A flag which indicates that user confirmation is needed
  before applying the change.

  -}
  _needsConfirmation :: (Maybe Bool)
  , {-|
  A human-readable string which is rendered less prominent in
  the user interface.

  -}
  _description :: (Maybe Data.Text.Text)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData ChangeAnnotation

instance Aeson.ToJSON ChangeAnnotation where
  toJSON (ChangeAnnotation arg0 arg1 arg2) = Aeson.object $ concat $  [["label" Aeson..= arg0]
    ,"needsConfirmation" Language.LSP.Protocol.Types.Common..=? arg1
    ,"description" Language.LSP.Protocol.Types.Common..=? arg2]

instance Aeson.FromJSON ChangeAnnotation where
  parseJSON = Aeson.withObject "ChangeAnnotation" $ \arg -> ChangeAnnotation <$> arg Aeson..: "label" <*> arg Aeson..:! "needsConfirmation" <*> arg Aeson..:! "description"