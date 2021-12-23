-- "eat.i"

Add to every object
Is
  Not edible.
  Not drinkable.
End add.

Syntax
  eat = eat (obj)
    Where obj IsA object
      else "You can't eat" say an obj. "!"

  drink = drink (obj)
    Where obj IsA object
      else "You can't drink" say an obj. "!"

Add to every object
  Verb eat
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    And obj is edible
      else "You can't eat that!"
    Does
      Locate obj at nowhere.
      -- In case item was being worn:
      Set wearer of obj to nobody.
      Make obj not worn.
      "You eat $+1."
  End verb.

  Verb drink
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    And obj is drinkable
      else "That is not drinkable."
    Does
      Locate obj at nowhere.
      -- In case item was being worn:
      Set wearer of obj to nobody.
      Make obj not worn.
      "You drink $+1."
  End verb.
End add.
