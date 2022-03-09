module RotAlgorithm (rot, rot13) where
import Data.Char

rot13 :: String -> String
rot13 = rot 13 

rot :: Int -> String -> String
rot step = map . nTimes step $ cipher
    where
        cipher char
            | char `elem` ['a'..'y'] = succ char
            | char `elem` ['A'..'Y'] = succ char
            | char == 'z' = 'a'
            | char == 'Z' = 'A'
            | otherwise = char

        nTimes :: Int -> (a -> a) -> a -> a
        nTimes n f x = iterate f x !! max 0 n