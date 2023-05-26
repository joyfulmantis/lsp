-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DeleteFileOptions where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Types.Common

{-|
Delete file options

-}
data DeleteFileOptions = DeleteFileOptions 
  { {-|
  Delete the content recursively if a folder is denoted.

  -}
  _recursive :: (Maybe Bool)
  , {-|
  Ignore the operation if the file doesn't exist.

  -}
  _ignoreIfNotExists :: (Maybe Bool)
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData DeleteFileOptions

instance Aeson.ToJSON DeleteFileOptions where
  toJSON (DeleteFileOptions arg0 arg1) = Aeson.object $ concat $  ["recursive" Language.LSP.Protocol.Types.Common..=? arg0
    ,"ignoreIfNotExists" Language.LSP.Protocol.Types.Common..=? arg1]

instance Aeson.FromJSON DeleteFileOptions where
  parseJSON = Aeson.withObject "DeleteFileOptions" $ \arg -> DeleteFileOptions <$> arg Aeson..:! "recursive" <*> arg Aeson..:! "ignoreIfNotExists"