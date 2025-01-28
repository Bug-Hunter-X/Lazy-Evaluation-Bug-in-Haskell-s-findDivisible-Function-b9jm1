# Haskell Lazy Evaluation Bug

This repository demonstrates a subtle bug in a Haskell function related to lazy evaluation and infinite lists.  The `findDivisible` function aims to find the first number in a list divisible by a given number.  However, due to Haskell's lazy evaluation, it may not terminate correctly when dealing with infinite lists under certain conditions.

The `bug.hs` file contains the buggy code, and `bugSolution.hs` provides a corrected version.

## Bug Description
The original `findDivisible` function uses `filter` and `listToMaybe` to find the first divisible number.  With an infinite list, `filter` keeps generating numbers until a match is found; this may work for some divisors but might hang indefinitely or not produce a result for others, depending on how the lazy evaluation unfolds.

## Solution
The solution employs a more controlled approach to prevent infinite computations by explicitly handling the list traversal.