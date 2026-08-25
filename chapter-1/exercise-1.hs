import Text.Printf

ident :: Int -> Int 
ident x = x

f :: Int -> Int
f num = num + 10

var :: Int
var = 50

main :: IO ()

main = do
        if (f . ident) var == (ident . f) var
                then putStrLn "id function is identity function"
                else printf "id is not identity function"
