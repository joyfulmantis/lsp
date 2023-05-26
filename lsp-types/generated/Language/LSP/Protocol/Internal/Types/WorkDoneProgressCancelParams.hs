-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.WorkDoneProgressCancelParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.ProgressToken
import qualified Language.LSP.Protocol.Types.Common

{-|

-}
data WorkDoneProgressCancelParams = WorkDoneProgressCancelParams 
  { {-|
  The token to be used to report progress.

  -}
  _token :: Language.LSP.Protocol.Internal.Types.ProgressToken.ProgressToken
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData WorkDoneProgressCancelParams

instance Aeson.ToJSON WorkDoneProgressCancelParams where
  toJSON (WorkDoneProgressCancelParams arg0) = Aeson.object $ concat $  [["token" Aeson..= arg0]]

instance Aeson.FromJSON WorkDoneProgressCancelParams where
  parseJSON = Aeson.withObject "WorkDoneProgressCancelParams" $ \arg -> WorkDoneProgressCancelParams <$> arg Aeson..: "token"