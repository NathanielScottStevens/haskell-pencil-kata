module Lib where

import Data.Char
import qualified Data.Text as T

someFunc :: IO ()
someFunc = putStrLn "SomeFunc"

type Paper = String

type Pencil = Integer

type Writing = String

data Input =
  Input Paper Pencil Writing
  deriving (Show)

data Output =
  Output Paper Pencil
  deriving (Show)

write :: Input -> Output
-- write (Input paper pencil writing) = Output "" 5
write (Input paper pencil writing) =
  foldr write' (Output (reverse paper) pencil) rWriting
  where
    rWriting = reverse writing

write' :: Char -> Output -> Output
write' char (Output paper pencil) = Output (char : paper) (pencil - 1)

-- findIndex (>6) (scanl (+) 0 $ map getCost "asAf df a DFD")
-- splitAt 7 (scanl (+) 0 $ map getCost "asAf df a DFD")
getCost :: Char -> Integer
getCost char
  | isUpper (char) = 2
  | isLower (char) = 1
  | otherwise = 0
