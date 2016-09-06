module AboutNumberConversions exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Number Conversions"
        [ test "toFloat converts an int to a float" <|
            \() -> Expect.equal (toFloat 5) 5.0
        , test "floor converts a float to an int (rounding down)" <|
            \() -> Expect.equal (floor 3.6) 3
        , test "floor converts a float to an int (rounding down)" <|
            \() -> Expect.equal (floor -3.6) -4
        , test "ceiling converts a float to an int (rounding up)" <|
            \() -> Expect.equal (ceiling 3.6) 4
        , test "ceiling converts a float to an int (rounding up)" <|
            \() -> Expect.equal (ceiling -3.6) -3
        , test "round converts a float to an int (rounding to the closest int)" <|
            \() -> Expect.equal (round 3.6) 4
        , test "round converts a float to an int (rounding to the closest int)" <|
            \() -> Expect.equal (round -3.6) -4
        , test "truncate converts a float to an int (rounding towards 0)" <|
            \() -> Expect.equal (truncate 3.6) 3
        , test "truncate converts a float to an int (rounding towards 0)" <|
            \() -> Expect.equal (truncate -3.6) -3
        ]
