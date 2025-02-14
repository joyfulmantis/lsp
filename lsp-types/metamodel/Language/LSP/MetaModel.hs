{-# LANGUAGE TemplateHaskell       #-}

module Language.LSP.MetaModel (module Export, metaModel) where

import Language.LSP.MetaModel.Types as Export

import Data.FileEmbed (makeRelativeToProject)
import qualified Language.Haskell.TH as TH

-- | The metamodel used to generate the LSP types in this package.
metaModel :: MetaModel
metaModel = $(loadMetaModelFromFile =<< makeRelativeToProject "metaModel.json")
