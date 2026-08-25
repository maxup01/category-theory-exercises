import Text.Printf

ident :: Int -> Int
ident num = num 

comp_ident :: Int -> Int
comp_ident num = (ident . ident) num

main :: IO ()
main = do
        let val = 10
        if comp_ident val == val
                then putStrLn "comp_ident function is identity function"
                else printf "comp_ident is not identity function"
