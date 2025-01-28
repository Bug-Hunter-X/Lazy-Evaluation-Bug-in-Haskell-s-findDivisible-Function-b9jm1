The solution addresses the termination issue by using a more explicit approach to iterate through the list.

```haskell
findDivisible :: Integral a => a -> [a] -> Maybe a
findDivisible n xs = find (
um -> num `mod` n == 0) xs

--Helper function to find the first element that satisfies a predicate
find :: (a -> Bool) -> [a] -> Maybe a
find _ [] = Nothing
find p (x:xs) | p x       = Just x
               | otherwise = find p xs

infiniteList = [1..]

main = do
  print (findDivisible 7 infiniteList) -- Prints "Just 7"
  print (findDivisible 11 infiniteList) -- Prints "Just 11"
```
The `find` function explicitly stops processing elements once a match is found, thereby ensuring that the search terminates regardless of whether the input list is finite or infinite.