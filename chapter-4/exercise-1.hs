data Optional a = Some a | None deriving Show

safe_division :: (Int, Int) -> Optional Int
safe_division (f, s) = do
        if s == 0
        then None
        else let result = div f s
                in Some result

main :: IO ()
main = do
    print (safe_division (10, 2))
    print (safe_division (10, 0))
    print (safe_division (7, 2))
