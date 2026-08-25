import Text.Printf

f :: Int -> Int
f num = num + 1

g :: Int -> Int
g num = num * 2

comp :: Int -> Int
comp num = (f . g) num

x :: Int
x = comp 10

main :: IO ()
main = do
        printf "Result of composition function %d" x 
