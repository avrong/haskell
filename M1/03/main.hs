sumSquareOrSquareSum x y = if sumSquare > squareSum
                           then sumSquare
                           else squareSum
  where sumSquare = x^2 + y^2
        squareSum = (x+y)^2

sumSquareOrSquareSum2 x y = (\sumSquare squareSum ->
                              if sumSquare > squareSum
                              then sumSquare
                              else squareSum) (x^2 + y^2) ((x+y)^2)

overwrite x = (\y ->
                 (\y ->
                    (\y -> 5) 4) 3) 2

overwrite_let x = let x = 3
                   in let x = 4
                      in let x = 5
                         in x

x = 5

add1 y = y + x
add2 y = (\x -> y + x) 6
add3 y = (\y ->
            (\x -> y + x) 4) 4

counter x = (\x -> (\x -> x+1) x+1) x
