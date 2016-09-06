module AboutTime exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)
import Time


testSuite =
    describe "About Time"
        [ test "time is just a Float" <|
            \() -> Expect.equal 123.45 123.45
        , test "a constant exists for hour" <|
            \() -> Expect.equal (1 * Time.hour) Time.hour
        , test "and minute" <|
            \() -> Expect.equal (1 * Time.minute) (Time.hour / 60)
        , test "and second" <|
            \() -> Expect.equal (1 * Time.second) (Time.hour / 60 / 60)
        , test "and millisecond" <|
            \() -> Expect.equal (1 * Time.millisecond) (Time.hour / 60 / 60 / 1000)
        , test "helpers exist to convert back to Floats" <|
            \() -> Expect.equal (Time.inSeconds 1000) 1
        ]
