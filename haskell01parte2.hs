-- Prática 01 de Haskell - Parte 2
-- Nome: Isadora Silveira Moro

module Parte2 where

import Parte1 
import Inicio

-- 1)
itemize :: [String] -> [String]
itemize lis = map htmlItem lis

-- 2)
onlyVowels :: String -> String
onlyVowels s = filter isVowel2 s

-- 3)
onlyElderly :: [Int] -> [Int]
onlyElderly ages = filter isElderly ages

-- 4)
onlyLongWords :: [String] -> [String]
onlyLongWords lis = filter isLongWord lis

-- 5)
onlyEven :: [Int] -> [Int]
onlyEven num = filter isEvenBetter num

-- 6)
between60and80 :: Int -> Bool
between60and80 num = num >= 60 && num <= 80

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 numeros = filter between60and80 numeros

-- 7)
spaces :: Char -> Bool
spaces c = c == ' '

countSpaces :: String -> Int
countSpaces s = length (filter spaces s)

-- 8)
calcAreas :: [Float] -> [Float]
calcAreas lis = map circleArea lis

-- 9)
charFound :: Char -> String -> Bool
charFound c s = any(True ==)(map(c ==)s)

--solução prof:
--charFound c s = length (filter (c ==) s) > 0