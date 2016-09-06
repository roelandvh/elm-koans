module AboutMaybe exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Maybe"
        [ test "maybe represents a value that may be nothing" <|
            \() -> Expect.equal Nothing Nothing
        , test "or the value could be something" <|
            \() -> Expect.equal (Just 5) (Just 5)
        , test "withDefault can be used to get the value from a maybe" <|
            \() -> Expect.equal (Maybe.withDefault 3 (Just 5)) 5
        , test "but will give the default value if there is nothing" <|
            \() -> Expect.equal (Maybe.withDefault 3 Nothing) 3
        , test "oneOf will get the first value from a list of maybes" <|
            \() -> Expect.equal (Maybe.oneOf [ Nothing, (Just 1), (Just 2) ]) (Just 1)
        , test "but you could still wind up with nothing" <|
            \() -> Expect.equal (Maybe.oneOf [ Nothing, Nothing, Nothing ]) Nothing
        , test "map will transform the value in a maybe" <|
            \() -> Expect.equal (Maybe.map (\n -> n / 2) (Just 4)) (Just 2)
        , test "but will not transform a nothing" <|
            \() -> Expect.equal (Maybe.map (\n -> n / 2) Nothing) Nothing
        ]
