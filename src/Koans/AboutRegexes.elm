module AboutRegexes exposing (testSuite)

import Expect
import Regex
import String
import Test exposing (describe, test)
import TestHelpers exposing (..)


testSuite =
    describe "About Regex"
        [ test "contains tests for a regex match" <|
            \() -> Expect.equal (Regex.contains (Regex.regex "[abc]+") "abcdefg") True
        , test "escape will escape all special characters" <|
            \() -> Expect.equal (Regex.escape "[abc]+") "\\[abc\\]\\+"
        , test "useful for matching strange strings" <|
            \() -> Expect.equal (Regex.contains (Regex.regex (Regex.escape "[eir]+")) "w[eir]+d") True
        , test "it's easy to make your regex case insensitive" <|
            \() -> Expect.equal (Regex.contains (Regex.caseInsensitive (Regex.regex "abc")) "ABC") True
        , test "find returns a list of all matches" <|
            \() -> Expect.equal (Regex.find Regex.All (Regex.regex "abc") "abcabcabc" |> List.length) 3
        , test "matches contain the match" <|
            \() -> Expect.equal (Regex.find Regex.All (Regex.regex "[abc]") "axbxc" |> List.map (\match -> match.match)) ["a", "b", "c"]
        , test "matches contain the index" <|
            \() -> Expect.equal (Regex.find Regex.All (Regex.regex "[abc]") "axbxc" |> List.map (\match -> match.index)) [0, 2, 4]
        , test "matches may contain submatches" <|
            \() -> Expect.equal (Regex.find Regex.All (Regex.regex "(a)|(b)") "axbxc" |> List.map (\match -> match.submatches)) [[Just "a", Nothing], [Nothing, Just "b"]]
        , test "you may limit the number of matches" <|
            \() -> Expect.equal (Regex.find (Regex.AtMost 2) (Regex.regex "[abc]") "axbxc" |> List.map (\match -> match.match)) ["a", "b"]
        , test "replace can modify based on the match" <|
            \() -> Expect.equal (Regex.replace Regex.All (Regex.regex "[abc]") (\match -> String.toUpper match.match) "axbxc") "AxBxC"
        ]
