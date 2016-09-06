module AboutLists exposing (testSuite)

import Expect
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Lists"
        [ test "list literals are denoted by brackets" <|
            \() -> Expect.equal [ 1, 2, 3 ] [1, 2, 3]
        , test "length gives the length of a list" <|
            \() -> Expect.equal (List.length [ 1, 2, 3 ]) 3
        , test "isEmpty determines if a list is empty" <|
            \() -> Expect.equal (List.isEmpty []) True
        , test "reverse revereses a list" <|
            \() -> Expect.equal (List.reverse [ 1, 2, 3 ]) [3, 2, 1]
        , test "member tests if a list includes a value" <|
            \() -> Expect.equal (List.member 2 [ 1, 2, 3 ]) True
        , test "head returns the first item in a list" <|
            \() -> Expect.equal (List.head [ 1, 2, 3 ]) (Just 1)
        , test "minimum returns the minimum of a list of comparables" <|
            \() -> Expect.equal (List.minimum [ 1, 2, 3 ]) (Just 1)
        , test "maximum returns the maximum of a list of comparables" <|
            \() -> Expect.equal (List.maximum [ 'a', 'b', 'c' ]) (Just 'c')
        , test "take returns the first n items in a list" <|
            \() -> Expect.equal (List.take 2 [ 1, 2, 3 ]) [1, 2]
        , test "drop returns the list without the first n items" <|
            \() -> Expect.equal (List.drop 2 [ 1, 2, 3 ]) [3]
        , test "filter returns the elements that return true for a predicate function" <|
            \() -> Expect.equal (List.filter (\x -> x % 2 == 0) [ 1, 2, 3, 4 ]) [2, 4]
        , test "all tests whether all elements of a list return true for a predicate function" <|
            \() -> Expect.equal (List.all (\x -> x % 2 == 0) [ 2, 4 ]) True
        , test "any tests whether any elements of a list return true for a predicate function" <|
            \() -> Expect.equal (List.any (\x -> x % 2 == 0) [ 1, 2, 3 ]) True
        , test "repeat returns a list with n copies of a value" <|
            \() -> Expect.equal (List.repeat 4 1) [1, 1, 1, 1]
        , test "sum returns the sum of a list of numbers" <|
            \() -> Expect.equal (List.sum [ 1, 2, 3 ]) 6
        , test "product returns the product of a list of numbers" <|
            \() -> Expect.equal (List.product [ 1, 2, 3 ]) 6
        , test "sort sorts a list of comparables" <|
            \() -> Expect.equal (List.sort [ 'c', 'a', 'b' ]) ['a', 'b', 'c']
        , test "sortBy sorts using a function that returns a comparable" <|
            \() -> Expect.equal (List.sortBy (\x -> x % 3) [ 10, 6, 8 ]) [6, 10, 8]
        , test ":: is the cons operator" <|
            \() -> Expect.equal (1 :: [ 2, 3 ]) [1, 2, 3]
        , test "append puts 2 lists together" <|
            \() -> Expect.equal (List.append [ 1, 2 ] [ 3, 4 ]) [1, 2, 3, 4]
        , test "concat appends the elements in a list of lists" <|
            \() -> Expect.equal (List.concat [ [ 1, 2 ], [ 3, 4 ] ]) [1, 2, 3, 4]
        , test "intersperse puts a value between all elements of a list" <|
            \() -> Expect.equal (List.intersperse 1 [ 2, 3, 4 ]) [2, 1, 3, 1, 4]
        , test "map applies a function to every element of a list" <|
            \() -> Expect.equal (List.map (\x -> 2 * x) [ 1, 2, 3 ]) [2, 4, 6]
        , test "map2 applies a function to elements from 2 lists"
          -- corresponding functions exist up to map6
          <|
            \() -> Expect.equal (List.map2 (\x y -> x * y) [ 1, 2, 3 ] [ 4, 5, 6 ]) [4, 10, 18]
        , test "indexedMap applies a function to the index of an element and that element" <|
            \() -> Expect.equal (List.indexedMap (\x y -> y - x) [ 1, 2, 3 ]) [1, 1, 1]
        , test "foldl reduces a list from the left" <|
            \() -> Expect.equal (List.foldl (\x y -> x ++ y) "a" [ "b", "c", "d" ]) "dcba"
        , test "foldr reduces a list from the right" <|
            \() -> Expect.equal (List.foldr (\x y -> x ++ y) "a" [ "b", "c", "d" ]) "bcda"
        , test "scanl reduces a list from the left, building a list of intermediate results" <|
            \() -> Expect.equal (List.scanl (\x y -> x ++ y) "a" [ "b", "c", "d" ]) ["a", "ba", "cba", "dcba"]
        ]
