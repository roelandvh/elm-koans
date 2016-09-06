module AboutComparisonOperators exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Comparison Operators"
        [ test "== tests for equality" <|
            \() -> Expect.true "Should be True" (1 == 1)
        , test "/= tests for inequality" <|
            \() -> Expect.true "Should be True" (-1 /= 0)
        , test "< tests for less than" <|
            \() -> Expect.true "Should be True" (1 < 2)
        , test "<= tests for less than or equal to" <|
            \() -> Expect.true "Should be True" (1 <= 1)
        , test "> tests for greater than" <|
            \() -> Expect.true "Should be True" (1 > 0)
        , test ">= tests for greater than or equal to" <|
            \() -> Expect.true "Should be True" (1 >= 1)
        , test "Floats are comparable" <|
            \() -> Expect.true "Should be True" (1.5 >= 1.5)
        , test "Strings are comparable" <|
            \() -> Expect.true "Should be True" ("A string" == "A string")
        , test "Chars are comparable" <|
            \() -> Expect.true "Should be True" ('a' == 'a')
        , test "max returns the maximum of two comparables" <|
            \() -> Expect.equal (max 1 2) 2
        , test "min returns the minimum of two comparables" <|
            \() -> Expect.equal (min 1 2) 1
        , test "compare returns an Order"
          -- valid Order values are LT, EQ, and GT
          <|
            \() -> Expect.equal (compare 1 2) LT
        , test "functions can be made infix with `backticks`" <|
            \() -> Expect.equal (2 `compare` 1) GT
        ]
