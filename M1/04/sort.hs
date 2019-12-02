import Data.List

author = ("Will", "Kurt")

firstName = fst author
lastName = snd author

names = [("Ien", "Curtis"),
         ("Bernard", "Samner"),
         ("Peter", "Hook"),
         ("Steven", "Morris")]

compareLastNames name1 name2 = if last1 > last2
                               then GT
                               else
                                 if last1 < last2
                                 then LT
                                 else
                                   if first1 > first2
                                   then GT
                                   else
                                     if first1 < first2
                                     then LT
                                     else EQ
  where last1 = snd name1
        last2 = snd name2
        first1 = fst name1
        first2 = fst name2

compareLastNames2 name1 name2 = compare last1 last2
  where last1 = snd name1
        last2 = snd name2

sorted = sortBy compareLastNames names
