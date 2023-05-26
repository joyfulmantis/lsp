-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.TypeHierarchySupertypesParams where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.ProgressToken
import qualified Language.LSP.Protocol.Internal.Types.TypeHierarchyItem
import qualified Language.LSP.Protocol.Types.Common

{-|
The parameter of a `typeHierarchy/supertypes` request.

@since 3.17.0

-}
data TypeHierarchySupertypesParams = TypeHierarchySupertypesParams 
  { {-|
  An optional token that a server can use to report work done progress.

  -}
  _workDoneToken :: (Maybe Language.LSP.Protocol.Internal.Types.ProgressToken.ProgressToken)
  , {-|
  An optional token that a server can use to report partial results (e.g. streaming) to
  the client.

  -}
  _partialResultToken :: (Maybe Language.LSP.Protocol.Internal.Types.ProgressToken.ProgressToken)
  , {-|

  -}
  _item :: Language.LSP.Protocol.Internal.Types.TypeHierarchyItem.TypeHierarchyItem
  }
  deriving stock (Show, Eq, Ord, Generic)

instance DeepSeq.NFData TypeHierarchySupertypesParams

instance Aeson.ToJSON TypeHierarchySupertypesParams where
  toJSON (TypeHierarchySupertypesParams arg0 arg1 arg2) = Aeson.object $ concat $  ["workDoneToken" Language.LSP.Protocol.Types.Common..=? arg0
    ,"partialResultToken" Language.LSP.Protocol.Types.Common..=? arg1
    ,["item" Aeson..= arg2]]

instance Aeson.FromJSON TypeHierarchySupertypesParams where
  parseJSON = Aeson.withObject "TypeHierarchySupertypesParams" $ \arg -> TypeHierarchySupertypesParams <$> arg Aeson..:! "workDoneToken" <*> arg Aeson..:! "partialResultToken" <*> arg Aeson..: "item"