-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.MonikerKind where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Data.Set
import qualified Data.String
import qualified Data.Text
import qualified Language.LSP.Protocol.Types.LspEnum

{-|
The moniker kind.

@since 3.16.0

-}
data MonikerKind = 
    {-|
  The moniker represent a symbol that is imported into a project

  -}
  MonikerKind_Import
  | {-|
  The moniker represents a symbol that is exported from a project

  -}
  MonikerKind_Export
  | {-|
  The moniker represents a symbol that is local to a project (e.g. a local
  variable of a function, a class not visible outside the project, ...)

  -}
  MonikerKind_Local
  deriving stock (Show, Eq, Ord, Generic)
  deriving ( DeepSeq.NFData
  , Aeson.ToJSON
  , Aeson.FromJSON ) via (Language.LSP.Protocol.Types.LspEnum.AsLspEnum MonikerKind Data.Text.Text)

instance Language.LSP.Protocol.Types.LspEnum.LspEnum MonikerKind where
  knownValues = Data.Set.fromList [MonikerKind_Import
    ,MonikerKind_Export
    ,MonikerKind_Local]
  type EnumBaseType MonikerKind = Data.Text.Text
  toEnumBaseType MonikerKind_Import = "import"
  toEnumBaseType MonikerKind_Export = "export"
  toEnumBaseType MonikerKind_Local = "local"
  fromEnumBaseType "import" = pure MonikerKind_Import
  fromEnumBaseType "export" = pure MonikerKind_Export
  fromEnumBaseType "local" = pure MonikerKind_Local
  fromEnumBaseType _ = Nothing

