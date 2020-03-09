import Lib (write)
import Test.Tasty
import Test.Tasty.HUnit

main =
  defaultMain $
  testGroup
    "Pencil"
    [ testCase "Write" $ do
        assertEqual "Should append" "This and that" $ write "This" " and that"
    , testCase "Durability" $ do assertEqual "Are equal" 5 5
    ]
