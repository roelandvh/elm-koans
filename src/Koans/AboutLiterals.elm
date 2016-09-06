module AboutLiterals exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


-- Single line comments begin with "--"
{- Multi line comments
   begin with "{-" and end with "-}"
-}


testSuite =
    describe "About Literals"
        [ test "strings are enclosed in double quotes" <|
            \() -> Expect.equal "A string" "A string"
        , test "characters are enclosed in single quotes" <|
            \() -> Expect.equal 'A' 'A'
        , test "floats have a decimal" <|
            \() -> Expect.equal 42.24 42.24
        , test "integers do not" <|
            \() -> Expect.equal 42 42
        , test "number literals can be integers" <|
            let
                num : Int
                num =
                    42
            in
                \() -> Expect.equal num 42
        , test "number literals can be floats" <|
            let
                num : Float
                num =
                    42.0
            in
                \() -> Expect.equal num 42
        , test "lists are denoted by brackets" <|
            \() -> Expect.equal [ 1, 2, 3 ] [1, 2, 3]
        ]
