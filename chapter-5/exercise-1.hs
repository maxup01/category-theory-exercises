-- () is the terminal object: for every type a there is exactly one
-- function a -> (), namely \_ -> ().
--
-- A type is isomorphic to () precisely when it is a singleton — a set
-- with exactly one inhabitant. One is such a type.
--
-- The isomorphism is unique: terminality forbids any second arrow, so
-- f and g below are the only functions of their types.
--
-- Counterexample:
--   Bool  — 2 inhabitants, so 2 distinct isos Bool ≅ Bool (id and not);
--           more than one value means the identification is not canonical

data One = One deriving Show

-- the unique morphism () -> One
f :: () -> One
f () = One

-- the unique morphism One -> ()
g :: One -> ()
g One = ()
