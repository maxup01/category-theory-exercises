data Boolean = Yes | No deriving Show

yes :: () -> Boolean
yes () = Yes

no :: () -> Boolean
no () = No
