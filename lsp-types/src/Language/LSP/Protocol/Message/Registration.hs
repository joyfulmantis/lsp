{-# LANGUAGE DeriveAnyClass            #-}
{-# LANGUAGE DeriveGeneric             #-}
{-# LANGUAGE DuplicateRecordFields     #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE TypeInType                #-}

module Language.LSP.Protocol.Message.Registration where

import           Language.LSP.Protocol.Types
import           Language.LSP.Protocol.Internal.Method
import           Language.LSP.Protocol.Message.Meta
import           Language.LSP.Protocol.Message.Method
import           Language.LSP.Protocol.Utils.Misc

import           Data.Aeson
import           Data.Text                         (Text)
import qualified Data.Text                         as T
import           GHC.Generics

-- | Typed registration type, with correct options.
data TRegistration (m :: Method ClientToServer t) =
  TRegistration
    { -- | The id used to register the request. The id can be used to deregister
      -- the request again.
      _id              :: Text
      -- | The method / capability to register for.
    , _method          :: SClientMethod m
      -- | Options necessary for the registration.
      -- Make this strict to aid the pattern matching exhaustiveness checker
    , _registerOptions :: !(Maybe (RegistrationOptions m))
    }
  deriving stock Generic

deriving stock instance Eq (RegistrationOptions m) => Eq (TRegistration m)
deriving stock instance Show (RegistrationOptions m) => Show (TRegistration m)

-- TODO: can we do this generically somehow?
-- This generates the function
-- regHelper :: SMethod m
--           -> (( Show (RegistrationOptions m)
--               , ToJSON (RegistrationOptions m)
--               , FromJSON ($regOptTcon m)
--              => x)
--           -> x
makeRegHelper ''RegistrationOptions

instance ToJSON (TRegistration m) where
  toJSON x@(TRegistration _ m _) = regHelper m (genericToJSON lspOptions x)

data SomeRegistration = forall t (m :: Method ClientToServer t). SomeRegistration (TRegistration m)

instance ToJSON SomeRegistration where
  toJSON (SomeRegistration r) = toJSON r

instance FromJSON SomeRegistration where
  parseJSON = withObject "Registration" $ \o -> do
    SomeClientMethod m <- o .: "method"
    r <- TRegistration <$> o .: "id" <*> pure m <*> regHelper m (o .: "registerOptions")
    pure (SomeRegistration r)

instance Show SomeRegistration where
  show (SomeRegistration r@(TRegistration _ m _)) = regHelper m (show r)

toUntypedRegistration :: TRegistration m -> Registration
toUntypedRegistration (TRegistration i meth opts) = Registration i (T.pack $ someMethodToMethodString $ SomeMethod meth) (Just $ regHelper meth (toJSON opts))

toSomeRegistration :: Registration -> Maybe SomeRegistration
toSomeRegistration r =
  let v = toJSON r
  in case fromJSON v of
    Success r' -> Just r'
    _          -> Nothing

-- ---------------------------------------------------------------------

-- | Typed unregistration type.
data TUnregistration (m :: Method ClientToServer t) =
  TUnregistration
    { -- | The id used to unregister the request or notification. Usually an id
      -- provided during the register request.
      _id     :: Text
      -- | The method / capability to unregister for.
    , _method :: SMethod m
    } deriving stock Generic

deriving stock instance Eq (TUnregistration m)
deriving stock instance Show (TUnregistration m)

instance ToJSON (TUnregistration m) where
  toJSON x@(TUnregistration _ m) = regHelper m (genericToJSON lspOptions x)

data SomeUnregistration = forall t (m :: Method ClientToServer t). SomeUnregistration (TUnregistration m)

instance ToJSON SomeUnregistration where
  toJSON (SomeUnregistration r) = toJSON r

instance FromJSON SomeUnregistration where
  parseJSON = withObject "Unregistration" $ \o -> do
    SomeClientMethod m <- o .: "method"
    r <- TUnregistration <$> o .: "id" <*> pure m
    pure (SomeUnregistration r)

toUntypedUnregistration :: TUnregistration m -> Unregistration
toUntypedUnregistration (TUnregistration i meth) = Unregistration i (T.pack $ someMethodToMethodString $ SomeMethod meth)

toSomeUnregistration :: Unregistration -> Maybe SomeUnregistration
toSomeUnregistration r =
  let v = toJSON r
  in case fromJSON v of
    Success r' -> Just r'
    _          -> Nothing

