-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.ChangeAnnotationIdentifier where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text

{-|
An identifier to refer to a change annotation stored with a workspace edit.

-}
newtype ChangeAnnotationIdentifier = ChangeAnnotationIdentifier Data.Text.Text
  deriving stock (Show, Eq, Ord, Generic)
  deriving newtype ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON
  , Aeson.ToJSONKey
  , Aeson.FromJSONKey )