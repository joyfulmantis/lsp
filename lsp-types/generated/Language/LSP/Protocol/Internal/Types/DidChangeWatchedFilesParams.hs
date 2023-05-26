-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DidChangeWatchedFilesParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.FileEvent
import qualified Language.LSP.Protocol.Types.Common

{-|
The watched files change notification's parameters.

-}
data DidChangeWatchedFilesParams = DidChangeWatchedFilesParams 
  { {-|
  The actual file events.

  -}
  _changes :: [Language.LSP.Protocol.Internal.Types.FileEvent.FileEvent]
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DidChangeWatchedFilesParams

instance Aeson.ToJSON DidChangeWatchedFilesParams where
  toJSON (DidChangeWatchedFilesParams arg0) = Aeson.object $ concat $  [["changes" Aeson..= arg0]]

instance Aeson.FromJSON DidChangeWatchedFilesParams where
  parseJSON = Aeson.withObject "DidChangeWatchedFilesParams" $ \arg -> DidChangeWatchedFilesParams <$> arg Aeson..: "changes"