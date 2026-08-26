op_monoid :: ((Int, Int) -> Int, () -> Int) -> Int -> Int
op_monoid (f, s) a = f (a, s ())

modulo :: (Int, Int) -> Int
modulo (n, m) = mod n m

number :: () -> Int
number () = 10

main :: IO ()
main = do
        print (op_monoid (modulo, number) 20)
