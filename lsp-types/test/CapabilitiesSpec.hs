{-# LANGUAGE DuplicateRecordFields #-}

{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
module CapabilitiesSpec where

import           Language.LSP.Protocol.Types
import           Language.LSP.Protocol.Capabilities
import           Test.Hspec

spec :: Spec
spec = describe "capabilities" $ do
  it "gives 3.10 capabilities" $
    let ClientCapabilities{_textDocument=Just tdcs} = capsForVersion (LSPVersion 3 10)
        Just (DocumentSymbolClientCapabilities{_hierarchicalDocumentSymbolSupport=mHierarchical}) = _documentSymbol tdcs
      in mHierarchical `shouldBe` Just True
  it "gives pre 3.10 capabilities" $
      let ClientCapabilities{_textDocument=Just tdcs} = capsForVersion (LSPVersion 3 9)
          Just (DocumentSymbolClientCapabilities{_hierarchicalDocumentSymbolSupport=mHierarchical}) = _documentSymbol tdcs
        in mHierarchical `shouldBe` Nothing
