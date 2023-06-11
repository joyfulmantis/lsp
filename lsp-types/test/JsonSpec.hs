{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeApplications           #-}
{-# LANGUAGE TypeInType                 #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE UndecidableInstances       #-}
{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StandaloneDeriving         #-}
{-# LANGUAGE TypeOperators              #-}

-- we're using some deprecated stuff from the LSP spec, that's fine
{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
-- | Test for JSON serialization
module JsonSpec where

import           Language.LSP.Protocol.Types
import           Language.LSP.Protocol.Message

import qualified Data.Aeson                as J
import           Data.List                 (isPrefixOf)
import qualified Data.Row                  as R
import qualified Data.Row.Records          as R
import           Data.Void
import           Test.Hspec
import           Test.Hspec.QuickCheck
import           Test.QuickCheck           hiding (Success)
import           Test.QuickCheck.Instances ()

-- import Debug.Trace
-- ---------------------------------------------------------------------

{-# ANN module ("HLint: ignore Redundant do"       :: String) #-}

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "dispatcher" jsonSpec
  describe "ResponseMessage"  responseMessageSpec

-- ---------------------------------------------------------------------

jsonSpec :: Spec
jsonSpec = do
  describe "General JSON instances round trip" $ do
  -- DataTypesJSON
    prop "MarkedString"   (propertyJsonRoundtrip :: MarkedString -> Property)
    prop "MarkupContent"  (propertyJsonRoundtrip :: MarkupContent -> Property)
    prop "TextDocumentContentChangeEvent"  (propertyJsonRoundtrip :: TextDocumentContentChangeEvent -> Property)
    prop "WatchedFiles"   (propertyJsonRoundtrip :: DidChangeWatchedFilesRegistrationOptions -> Property)
    prop "ResponseMessage Hover"
         (propertyJsonRoundtrip :: TResponseMessage 'Method_TextDocumentHover -> Property)
  describe "JSON decoding regressions" $
    it "CompletionItem" $
      (J.decode "{\"jsonrpc\":\"2.0\",\"result\":[{\"label\":\"raisebox\"}],\"id\":1}" :: Maybe (TResponseMessage 'Method_TextDocumentCompletion))
        `shouldNotBe` Nothing


responseMessageSpec :: Spec
responseMessageSpec = do
  describe "edge cases" $ do
    it "decodes result = null" $ do
      let input = "{\"jsonrpc\": \"2.0\", \"id\": 123, \"result\": null}"
        in  J.decode input `shouldBe` Just
              ((TResponseMessage "2.0" (Just (IdInt 123)) (Right $ InL J.Null)) :: TResponseMessage 'Method_WorkspaceExecuteCommand)
    it "handles missing params field" $ do
      J.eitherDecode "{ \"jsonrpc\": \"2.0\", \"id\": 15, \"method\": \"shutdown\"}"
        `shouldBe` Right (TRequestMessage "2.0" (IdInt 15) SMethod_Shutdown Nothing)
  describe "invalid JSON" $ do
    it "throws if neither result nor error is present" $ do
      (J.eitherDecode "{\"jsonrpc\":\"2.0\",\"id\":1}" :: Either String (TResponseMessage 'Method_Initialize))
        `shouldBe` Left ("Error in $: both error and result cannot be Nothing")
    it "throws if both result and error are present" $ do
      (J.eitherDecode
        "{\"jsonrpc\":\"2.0\",\"id\": 1,\"result\":{\"capabilities\": {}},\"error\":{\"code\":-32700,\"message\":\"\",\"data\":{ \"retry\":false}}}"
        :: Either String (TResponseMessage 'Method_Initialize))
        `shouldSatisfy`
          (either (\err -> "Error in $: both error and result cannot be present" `isPrefixOf` err) (\_ -> False))

-- ---------------------------------------------------------------------

propertyJsonRoundtrip :: (Eq a, Show a, J.ToJSON a, J.FromJSON a) => a -> Property
propertyJsonRoundtrip a = J.Success a === J.fromJSON (J.toJSON a)

-- ---------------------------------------------------------------------

instance (Arbitrary a, Arbitrary b) => Arbitrary (a |? b) where
  arbitrary = oneof [InL <$> arbitrary, InR <$> arbitrary]
  shrink = genericShrink

instance Arbitrary Null where
  arbitrary = pure Null

instance (R.AllUniqueLabels r, R.Forall r Arbitrary) => Arbitrary (R.Rec r) where
  arbitrary = R.fromLabelsA @Arbitrary $ \_l -> arbitrary
  shrink record = R.traverse @Arbitrary @[] shrink record

deriving newtype instance Arbitrary MarkedString

instance Arbitrary MarkupContent where
  arbitrary = MarkupContent <$> arbitrary <*> arbitrary
  shrink = genericShrink

instance Arbitrary MarkupKind where
  arbitrary = oneof [pure MarkupKind_PlainText,pure MarkupKind_Markdown]
  shrink = genericShrink

instance Arbitrary UInt where
  arbitrary = fromInteger <$> arbitrary

instance Arbitrary Uri where
  arbitrary = Uri <$> arbitrary
  shrink = genericShrink

--deriving newtype instance Arbitrary URI

instance Arbitrary WorkspaceFolder where
  arbitrary = WorkspaceFolder <$> arbitrary <*> arbitrary
  shrink = genericShrink

instance Arbitrary RelativePattern where
  arbitrary = RelativePattern <$> arbitrary <*> arbitrary
  shrink = genericShrink

deriving newtype instance Arbitrary Pattern
deriving newtype instance Arbitrary GlobPattern

instance Arbitrary Position where
  arbitrary = Position <$> arbitrary <*> arbitrary
  shrink = genericShrink

instance Arbitrary Location where
  arbitrary = Location <$> arbitrary <*> arbitrary
  shrink = genericShrink

instance Arbitrary Range where
  arbitrary = Range <$> arbitrary <*> arbitrary
  shrink = genericShrink

instance Arbitrary Hover where
  arbitrary = Hover <$> arbitrary <*> arbitrary
  shrink = genericShrink

instance {-# OVERLAPPING #-} Arbitrary (Maybe Void) where
  arbitrary = pure Nothing

instance (ErrorData m ~ Maybe Void) => Arbitrary (TResponseError m) where
  arbitrary = TResponseError <$> arbitrary <*> arbitrary <*> pure Nothing
  shrink = genericShrink

instance Arbitrary ResponseError where
  arbitrary = ResponseError <$> arbitrary <*> arbitrary <*> pure Nothing
  shrink = genericShrink

instance (Arbitrary (MessageResult m), ErrorData m ~ Maybe Void) => Arbitrary (TResponseMessage m) where
  arbitrary = TResponseMessage <$> arbitrary <*> arbitrary <*> arbitrary
  shrink = genericShrink

instance Arbitrary (LspId m) where
  arbitrary = oneof [IdInt <$> arbitrary, IdString <$> arbitrary]
  shrink = genericShrink

instance Arbitrary ErrorCodes where
  arbitrary =
    elements
      [ ErrorCodes_ParseError
      , ErrorCodes_InvalidRequest
      , ErrorCodes_MethodNotFound
      , ErrorCodes_InvalidParams
      , ErrorCodes_InternalError
      , ErrorCodes_ServerNotInitialized
      , ErrorCodes_UnknownErrorCode
      ]
  shrink = genericShrink

instance Arbitrary LSPErrorCodes where
  arbitrary =
    elements
      [ LSPErrorCodes_RequestFailed
      , LSPErrorCodes_ServerCancelled
      , LSPErrorCodes_ContentModified
      , LSPErrorCodes_RequestCancelled
      ]
  shrink = genericShrink
-- ---------------------------------------------------------------------

instance Arbitrary DidChangeWatchedFilesRegistrationOptions where
  arbitrary = DidChangeWatchedFilesRegistrationOptions <$> arbitrary
  shrink = genericShrink

instance Arbitrary FileSystemWatcher where
  arbitrary = FileSystemWatcher <$> arbitrary <*> arbitrary
  shrink = genericShrink

-- TODO: watchKind is weird
instance Arbitrary WatchKind where
  arbitrary = oneof [pure WatchKind_Change, pure WatchKind_Create, pure WatchKind_Delete]
  shrink = genericShrink

-- ---------------------------------------------------------------------
--
instance Arbitrary TextDocumentContentChangeEvent where
  arbitrary = TextDocumentContentChangeEvent <$> arbitrary
  shrink = genericShrink
