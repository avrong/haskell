sfOffice name =
    if lastName < "L"
    then nameText ++
         " - box 1234, San Francisco, CA, USA"
    else nameText ++
         " - box 5678, San Francisco, CA, USA"
  where lastName = snd name
        nameText = (fst name) ++ " " ++ lastName

nyOffice name =
    nameText ++
    ": box 1357, New York, NY, USA"
  where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - 456, Reno, NV, USA"
  where nameText = snd name

washingtonOffice name = "Dear " ++ nameText ++ " - 987, Washington, D.C, USA"
  where nameText = (fst name) ++ " " ++ (snd name)

getLocationFunction location =
  case location of
    "sf" -> sfOffice
    "ny" -> nyOffice
    "reno" -> renoOffice
    "dc" -> washingtonOffice
    _ -> (\name ->
            (fst name) ++ " " ++ (snd name))

addressLetter name location = locationFunction name
  where locationFunction = getLocationFunction location
