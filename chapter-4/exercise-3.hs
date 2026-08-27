data Optional a = Some a | None deriving Show

safe_reciprocal :: Double -> Optional Double
safe_reciprocal x = do
        if x == 0
        then None
        else Some (1 / x)

safe_root :: Double -> Optional Double
safe_root x = do
        if x >= 0
        then Some (sqrt x)
        else None

safe_reciprocal_root :: Double -> Optional Double
safe_reciprocal_root x = do
        case safe_reciprocal x of
                None -> None
                Some reciprocal_val -> safe_root reciprocal_val 

main :: IO ()
main = do
        print (safe_reciprocal_root (-10.0)) 
        print (safe_reciprocal_root 0.0) 
        print (safe_reciprocal_root 10.0) 
