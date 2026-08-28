data MyMaybe a = Some a | None deriving Eq
data MyEither a b = MyLeft a | MyRight b deriving Eq

toMyEither :: MyMaybe a -> MyEither () a
toMyEither (Some a) = MyRight a
toMyEither None     = MyLeft ()

toMyMaybe :: MyEither () a -> MyMaybe a
toMyMaybe (MyRight a) = Some a
toMyMaybe (MyLeft ()) = None

identityMyEither :: MyEither () a -> MyEither () a
identityMyEither x = x

identityMyMaybe :: MyMaybe a -> MyMaybe a
identityMyMaybe x = x

main :: IO ()
main = do 
        putStrLn "MyMaybe -> MyEither -> MyMaybe"
        print (toMyMaybe (toMyEither (Some 5)) == identityMyMaybe (Some 5 :: MyMaybe Int))
        print (toMyMaybe (toMyEither  None   ) == identityMyMaybe (None   :: MyMaybe Int))
 
        putStrLn "MyEither -> MyMaybe -> MyEither"
        print (toMyEither (toMyMaybe (MyRight 5)) == identityMyEither (MyRight 5 :: MyEither () Int))
        print (toMyEither (toMyMaybe (MyLeft ())) == identityMyEither (MyLeft () :: MyEither () Int))
