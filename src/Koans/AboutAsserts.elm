-- Single line comments begin with "--"
{- Multi line comments
   begin with "{-" and end with "-}"
-}
-- modules are named the same as their file name
-- and list what members they publicly expose


module AboutAsserts exposing (testSuite)

-- Other module names are referenced with `import`s

import Expect


-- members from other modules can be individually exposed within this module

import Test exposing (describe, test)


-- or you may expose all the members of another module

import TestHelpers exposing (..)


testSuite =
    -- `describe` takes the suite description and a list of `Test`s
    describe "About Expects"
        [ -- `test` takes the test description and a function that returns an
          -- `Expectation` when evaluated with the unit tuple `()`
          test "assert tests for a true value"
            (\() -> Expect.true "Should be True" xBool)
          -- `<|` calls the function on the left with the argument on the right
          --  and can be used to avoid some parenthesis
        , test "assertEqual tests for equality" <|
            \() -> Expect.equal True xBool
          -- `|>` calls the function on the right with the argument on the left
          -- and can be used to "pipeline" values through a series of functions
        , test "assertNotEqual tests for inequality" <|
            \() ->
                xBool
                    |> Expect.notEqual False
        ]
