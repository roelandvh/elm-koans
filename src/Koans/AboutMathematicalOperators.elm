module AboutMathematicalOperators exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Mathematical Operators"
        [ test "negate gives the negative of a number" <|
            \() -> Expect.equal -3 (negate 3)
        , test "abs gives the absolute value of a number" <|
            \() -> Expect.equal 3 (abs -3)
        , test "sqrt gives the square root of a Float" <|
            \() -> Expect.equal 3.0 (sqrt 9.0)
        , test "+ adds numbers" <|
            \() -> Expect.equal 3 (1 + 2)
        , test "- subtracts numbers" <|
            \() -> Expect.equal 3 (7 - 4)
        , test "* multiplies numbers" <|
            \() -> Expect.equal 6 (4 * 1.5)
        , test "/ divides Floats" <|
            \() -> Expect.equal 2.5 (5 / 2)
        , test "// divides Ints" <|
            \() -> Expect.equal 2 (5 // 2)
        , test "rem gives the remainder after division" <|
            \() -> Expect.equal 2 (5 `rem` 3)
        , test "% performs modular arithmetic (which is different)" <|
            \() -> Expect.equal (-1 % 5) 4
        , test "logBase returns the log of the value in the given base" <|
            \() -> Expect.equal (logBase 2 8) 3
        , test "clamp returns the value if it is between the given min and max" <|
            \() -> Expect.equal (clamp 1 10 5) 5
        , test "clamp returns the min value if the value is below the minimum" <|
            \() -> Expect.equal (clamp 1 10 -5) 1
        , test "clamp returns the max value if the value is above the maximum" <|
            \() -> Expect.equal (clamp 1 10 50) 10
        ]
