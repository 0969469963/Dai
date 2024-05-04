module Main where

import Sudoku
import Data.Maybe


sudoku :: Sudoku
sudoku = [8, 0, 1, 3, 4, 0, 0, 0, 0,
          4, 3, 0, 8, 0, 0, 1, 0, 7,
          0, 0, 0, 0, 6, 0, 0, 0, 3,
          2, 0, 8, 0, 5, 0, 0, 0, 9,
          0, 0, 9, 0, 0, 0, 7, 0, 0,
          6, 0, 0, 0, 7, 0, 8, 0, 4,
          3, 0, 0, 0, 1, 0, 0, 0, 0,
          1, 0, 5, 0, 0, 6, 0, 4, 2,
          0, 0, 0, 0, 2, 4, 3, 0, 8]

{-
sudoku :: Sudoku
sudoku = [8, 6, 1, 3, 4, 7, 2, 9, 5,
		  4, 3, 2, 8, 9, 5, 1, 6, 7,
		  9, 5, 7, 1, 6, 2, 4, 8, 3,
		  2, 7, 8, 4, 5, 1, 6, 3, 9,
		  5, 4, 9, 6, 8, 3, 7, 2, 1,
		  6, 1, 3, 2, 7, 9, 8, 5, 4,
		  3, 2, 4, 9, 1, 8, 5, 7, 6,
		  1, 8, 5, 7, 3, 6, 9, 4, 2,
		  7, 9, 6, 5, 2, 4, 3, 1, 8]
-}
main :: IO ()
main = do
	putStrLn $ pPrint sudoku ++ "\n\n"
	putStrLn $ pPrint $ fromMaybe [] $ solve sudoku