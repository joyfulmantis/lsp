-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.FileCreate where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|
Represents information on a file/folder create.

@since 3.16.0

-}
data FileCreate = FileCreate 
  { {-|
  A file:// URI for the location of the file/folder being created.

  -}
  _uri :: Data.Text.Text
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData FileCreate

instance Aeson.ToJSON FileCreate where
  toJSON (FileCreate arg0) = Aeson.object $ concat $  [["uri" Aeson..= arg0]]

instance Aeson.FromJSON FileCreate where
  parseJSON = Aeson.withObject "FileCreate" $ \arg -> FileCreate <$> arg Aeson..: "uri"