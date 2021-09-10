-- "kiss.i"

Syntax
  kiss = kiss (obj)
    Where obj IsA thing
      else "You can't kiss that!"

Add to every thing
  Verb kiss
    Does
      If obj=hero then
        "Well, if you must!"
      else
        If obj is inanimate then
          "You kiss" say the obj. "."
        else
          Say the obj. "avoids your advances."
        End if.
      End if.
  End verb.
End add.
