module Main where

import qualified MyLib (day1a)

main :: IO ()
main = do
  l <- map read . words <$> getLine :: IO [Integer]
  print $ MyLib.day1a l
