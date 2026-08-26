import Text.Printf
import Data.Time.Clock.POSIX (getPOSIXTime)

generate_random_number :: (Int, Int -> Int) -> Int
generate_random_number (x, f) = f x

roll_dice :: Int -> Int
roll_dice seed = mod seed 6  + 1

increment :: Int -> Int
increment num = num + 1

main :: IO ()
main = do
        millis <- round . (* 1000) <$> getPOSIXTime :: IO Int
        let val = generate_random_number (millis, roll_dice)
        printf "value of high order function %d" val
