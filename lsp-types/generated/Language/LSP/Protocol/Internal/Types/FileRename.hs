-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.FileRename where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.Common

{-|
Represents information on a file/folder rename.

@since 3.16.0

-}
data FileRename = FileRename 
  { {-|
  A file:// URI for the original location of the file/folder being renamed.

  -}
  _oldUri :: Data.Text.Text
  , {-|
  A file:// URI for the new location of the file/folder being renamed.

  -}
  _newUri :: Data.Text.Text
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData FileRename

instance Aeson.ToJSON FileRename where
  toJSON (FileRename arg0 arg1) = Aeson.object $ concat $  [["oldUri" Aeson..= arg0]
    ,["newUri" Aeson..= arg1]]

instance Aeson.FromJSON FileRename where
  parseJSON = Aeson.withObject "FileRename" $ \arg -> FileRename <$> arg Aeson..: "oldUri" <*> arg Aeson..: "newUri"