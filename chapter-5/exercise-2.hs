my_lcm :: (Int, Int) -> Int
my_lcm (a, b) = until (\n -> n `mod` a == 0 && n `mod` b == 0) (+ 1) a

main :: IO ()
main = do
        print (my_lcm (6, 12)) 
        print (my_lcm (12, 6)) 
        print (my_lcm (1, 7))
