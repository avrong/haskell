toPart recipient = "Dear " ++ recipient ++ "?\n"
bodyPart bookTitle = "Thank you for bying " ++ bookTitle ++ "??\n"
fromPart author = "Your " ++ author ++ "???\n"

createEmail recipient bookTitle author = toPart recipient ++
                                         bodyPart bookTitle ++
                                         fromPart author

main::IO()
main = do
     putStrLn "recipient"
     recipient <- getLine

     putStrLn "book title"
     bookTitle <- getLine

     putStrLn "author"
     author <- getLine

     putStrLn (createEmail recipient bookTitle author)
