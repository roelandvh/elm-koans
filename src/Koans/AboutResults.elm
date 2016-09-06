module AboutResults exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Result"
        [ test "results represent the result of a function" <|
            \() -> Expect.equal (Ok 42) (Ok 42)
        , test "but could be an error" <|
            \() -> Expect.equal (Err "there was an error") (Err "there was an error")
        , test "a result can be converted to a maybe" <|
            \() -> Expect.equal (Result.toMaybe (Ok 42)) (Just 42)
        , test "but an error will become nothing" <|
            \() -> Expect.equal (Result.toMaybe (Err "there was an error")) Nothing
        , test "a maybe can also be converted to a result" <|
            \() -> Expect.equal (Result.fromMaybe "there was an error" (Just 42)) (Ok 42)
        , test "and will become an error if there is nothing" <|
            \() -> Expect.equal (Result.fromMaybe "there was an error" Nothing) (Err "there was an error")
        ]
