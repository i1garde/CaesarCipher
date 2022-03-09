module Main where

import RotAlgorithm

main :: IO ()
main = do
    putStrLn "Encrypt your message"
    putStrLn "Enter cipher step: "
    inputStep <- getLine
    let validateStep = read inputStep
    putStrLn "Enter message: "
    inputMessage <- getLine
    putStrLn $ rot validateStep inputMessage