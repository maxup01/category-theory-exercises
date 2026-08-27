data Optional a = Some a | None deriving Show

safe_reciprocal :: Double -> Optional Double
safe_reciprocal x = do
        if x == 0
        then None
        else Some (1 / x)

main :: IO ()
main = do
    print (safe_reciprocal 0.0)
    print (safe_reciprocal 10.0) 
