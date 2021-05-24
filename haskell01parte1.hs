-- Prática 01 de Haskell - Parte 1
-- Nome: Isadora Silveira Moro

-- 1)
sumSquares :: Int -> Int -> Int
sumSquares x y = (x^2) + (y^2)

-- 2)
circleArea :: Float -> Float
circleArea r = pi * (r^2)

-- 3)
age :: Int -> Int -> Int
age nasc atual = -(nasc - atual)

-- 4)
isElderly :: Int -> Bool
isElderly idade = idade > 65

-- 5)
htmlItem :: String -> String
htmlItem s = "<li>" ++ s ++ "</li>"

-- 6)
startsWithA :: String -> Bool
startsWithA s = head s == 'A'

-- 7)
isVerb :: String -> Bool
isVerb s = last s == 'r'

-- 8)
isVowel :: Char -> Bool
isVowel c
  | c == 'a' = True
  | c == 'e' = True
  | c == 'i' = True
  | c == 'o' = True
  | c == 'u' = True
  | otherwise = False

-- 9)
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = head lis1 == head lis2

-- 10)
isVowel2 :: Char -> Bool
isVowel2 c = elem c "AaEeIiOoUu"