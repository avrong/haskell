ifEven myFunction x = if even x
                      then myFunction x
                      else x

inc x = x + 1
double x = x*2
square x = x^2

ifEvenInc x = ifEven inc x
ifEvenDouble x = ifEven double x
ifEvenSquare x = ifEven square x

ifEvenCube x = ifEven (\x -> x^3) x
