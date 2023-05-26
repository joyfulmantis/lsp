-- THIS IS A GENERATED FILE, DO NOT EDIT

{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
{-# OPTIONS_GHC -Wno-deprecations #-}
module Language.LSP.Protocol.Internal.Types.DeclarationLink where

import GHC.Generics
import qualified Control.DeepSeq as DeepSeq
import qualified Data.Aeson as Aeson
import qualified Data.Row.Aeson as Aeson
import qualified Language.LSP.Protocol.Internal.Types.LocationLink

{-|
Information about where a symbol is declared.

Provides additional metadata over normal `Location` declarations, including the range of
the declaring symbol.

Servers should prefer returning `DeclarationLink` over `Declaration` if supported
by the client.

-}
newtype DeclarationLink = DeclarationLink Language.LSP.Protocol.Internal.Types.LocationLink.LocationLink
  deriving stock (Show, Eq, Ord, Generic)
  deriving newtype (DeepSeq.NFData, Aeson.ToJSON, Aeson.FromJSON)