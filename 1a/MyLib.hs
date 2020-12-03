module MyLib (day1a) where

import Data.List (sort)

find2020 :: [Integer] -> [Integer] -> Integer
find2020 (l1:ls1) (l2:ls2) | l1 + l2 == 2020 = l1 * l2
                           | l1 + l2  < 2020 = find2020 ls1 (l2:ls2)
                           | l1 + l2  > 2020 = find2020 (l1:ls1) ls2

day1a :: [Integer] -> Integer
day1a x = uncurry find2020 $ (\x -> (x, reverse x)) $ sort x
