-- "attack.i"

Add to every thing
  Is not shootable.
End add.

Add to every object
  Is
    Not weapon.
    Not shootable.
End add.


Synonyms
  kill, fight, hit = attack.
  fire = shoot.


Syntax
  attack = attack (act)
    Where act IsA thing
      else "You can't attack that."

Add to every thing
-- tag::lib_msgs_ex1[]
  Verb attack
-- end::lib_msgs_ex1[]
    Check act is not scenery else
      If act is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
-- tag::lib_msgs_ex1[]
    Does
      Say msg:violence_not_the_answer.
  End verb.
-- end::lib_msgs_ex1[]
End add.


Syntax
  attack_with = attack (act) 'with' (obj)
    Where act IsA thing
      else "You can't attack that."
    And obj IsA object
      else "You can't attack anything with that!"

Add to every thing
  Verb attack_with
    When obj
      Check act is not scenery else
        If act is plural
          then say msg:scenery_response_P1_pl.
          else say msg:scenery_response_P1_sg.
        End if.
      And obj is not scenery else
        If obj is plural
          then say msg:scenery_response_P2_pl.
          else say msg:scenery_response_P2_sg.
        End if.
      And obj in hero
        else say msg:you_dont_have_P2.
      And obj is weapon
        else "No point attacking anything with that!"
      Does
        Say msg:violence_not_the_answer.
  End verb.
End add.


Syntax
  shoot = shoot (obj)
    Where obj IsA thing
      else "You can't shoot at that."
  shoot = shoot 'at' (obj).


Add to every thing
  Verb shoot
    Check obj is not scenery else
      If obj is plural
        then say msg:scenery_response_P1_pl.
        else say msg:scenery_response_P1_sg.
      End if.
    Does
      If obj is shootable then
        "You need to specify what to shoot at."
      else
        "You need to specify what you want to shoot"
        say the obj. "with."
      End if.
  End verb.
End add.


Syntax
  shoot_at = shoot (obj) 'at' (act)
    Where obj IsA object
      else "You can't shoot that."
    And act IsA thing
      else "You can't shoot at that."

  shoot_with = shoot (act) 'with' (obj)
    Where obj IsA object
      else "You can't shoot that."
    And act IsA thing
      else "You can't shoot at that."

Add to every thing
  Verb shoot_at
    When obj
      Check obj is not scenery else
        If obj is plural
          then say msg:scenery_response_P1_pl.
          else say msg:scenery_response_P1_sg.
        End if.
      And act is not scenery else
        If act is plural
          then say msg:scenery_response_P2_pl.
          else say msg:scenery_response_P2_sg.
        End if.
      And obj in hero
        else say msg:you_dont_have_P1.
      And obj is shootable
        else "You can't shoot anything with that."
      Does
        Say msg:violence_not_the_answer.
  End verb.

  Verb shoot_with
    When obj
      Check act is not scenery else
        If act is plural
          then say msg:scenery_response_P1_pl.
          else say msg:scenery_response_P1_sg.
        End if.
      And obj is not scenery else
        If obj is plural
          then say msg:scenery_response_P2_pl.
          else say msg:scenery_response_P2_sg.
        End if.
      And obj in hero
        else say msg:you_dont_have_P2.
      And obj is shootable
        else "You can't shoot anything with that."
      Does
        Say msg:violence_not_the_answer.
  End verb.
End add.
