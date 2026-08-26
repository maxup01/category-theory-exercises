and_func :: (String -> Bool, String -> Bool) -> String -> Bool
and_func (f, r) s = f s && r s

or_func :: (String -> Bool, String -> Bool) -> String -> Bool
or_func (f, r) s = f s || r s

is_long :: String -> Bool
is_long s = length s > 3

starts_with_h :: String -> Bool
starts_with_h s = take 1 s == "h"

main :: IO ()
main = do
        print (and_func (starts_with_h,  is_long) "hello")
        print (and_func (starts_with_h,  starts_with_h) "world")
        print (or_func (is_long, is_long) "hi")
        print (or_func (is_long, starts_with_h) "dello") 
