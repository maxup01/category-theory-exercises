import Text.Printf

memoize :: (Int, Int -> Int) -> Int
memoize (x, f) = f x

increment :: Int -> Int
increment num = num + 1

main :: IO ()
main = do
        let val = memoize (5, increment)
        printf "value of high order function %d" val
