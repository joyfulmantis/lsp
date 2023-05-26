-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.FileOperationPatternKind where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Set
import qualified Data.String
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.LspEnum

{-|
A pattern kind describing if a glob pattern matches a file a folder or
both.

@since 3.16.0

-}
data FileOperationPatternKind = 
    {-|
  The pattern matches a file only.

  -}
  FileOperationPatternKind_File
  | {-|
  The pattern matches a folder only.

  -}
  FileOperationPatternKind_Folder
  deriving stock (Show, Eq, Ord, Generic)
  deriving ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON ) via (Language.LSP.Protocol.Types.LspEnum.AsLspEnum FileOperationPatternKind Data.Text.Text)

instance Language.LSP.Protocol.Types.LspEnum.LspEnum FileOperationPatternKind where
  knownValues = Data.Set.fromList [FileOperationPatternKind_File
    ,FileOperationPatternKind_Folder]
  type EnumBaseType FileOperationPatternKind = Data.Text.Text
  toEnumBaseType FileOperationPatternKind_File = "file"
  toEnumBaseType FileOperationPatternKind_Folder = "folder"
  fromEnumBaseType "file" = pure FileOperationPatternKind_File
  fromEnumBaseType "folder" = pure FileOperationPatternKind_Folder
  fromEnumBaseType _ = Nothing

