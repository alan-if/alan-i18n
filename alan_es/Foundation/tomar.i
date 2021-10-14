-- "tomar.i" <-- "take.i"

Add to every thing
  Is inanimado.
End add to thing.

Add to every object
  Is tomable.
End add to object.

Add to every actor
  Is not inanimado.
End add to actor.

Synonyms
  toma, tomo, agarro, agarra, agarrar, cojo, coge, coger,
  recojo, recoge, recoger = tomar.

  deja, dejo, descarto, descarta, descartar, suelto,
  suelta, soltar = dejar.

Syntax
  tomar = tomar (obj) *
    Where obj IsA object
      else "¡No puedes tomar" say the obj. "!"


Add to every object
  Verb tomar
    Check obj is tomable
      else "¡No puedes tomar" say the obj. "!"
    And obj not in hero
      else
-- @NOTE: ALAN is buggy when wrapping lines at words that use $$ continuation,
--        which are truncated prematurely! (See Issue #42)
--        For now, we'll leave it as it, otherwise it would become much more
--        verbose to handle. After the grammar module is created, we should be
--        able to rely on GNA concordance attributes to handle this with much
--        slimmer code...
        "Ya l$$" If obj is femenina
          then "a"
          else "o"
        End If.
        If obj is plural then "$$s" End If.
        "tienes"
          If obj is puesto then "-- l$$"
            If obj is femenina
              then "a"
              else "o"
          End If.
          If obj is plural then "$$s" End If.
          "llevas puest$$"
          If obj is femenina
            then "a"
            else "o"
          End If.
          If obj is plural then "$$s" End If.
        End if. "."
    And peso of obj <=50
      else "Es demasiado pesado."
    Does
      Locate obj in hero.
      -- In case item was being worn:
      Set portador of obj to nadie.
      Make obj not puesto.
      "Tomas" say the obj. "."
  End verb.
End add to.


Syntax
  dejar = dejar (obj) *.


Add to every object
  Verb dejar
    Check obj in hero
      else "No lo llevas."
    Does
      Locate obj here.
      -- In case item was being worn:
      Set portador of obj to nadie.
      Make obj not puesto.
      "Dejas" say the obj. "."
  End verb.
End add to.

-- @TODO: The 'cont' parameter was named 'holder' in English, maybe it should
--        be renamed here too?

Syntax
  tomar_de = tomar (obj) de (cont)
    Where obj IsA object
      else "Solo puedes tomar objetos."
    And cont IsA thing
      else "¡No puedes tomar objetos de eso!"
    And cont IsA container
      else "¡No puedes tomar objetos de eso!"

Add to every object
  Verb tomar_de
    When obj
      Check obj not in hero
        else "Ya llevas" say the obj. "."
      And obj in cont
        else say the obj. "no está."
    Does
      If cont=hero then
        "¡No necesitas tomar cosas de ti mismo!"
      else
        Locate obj in hero.
        -- In case item was being worn:
        Set portador of obj to nadie.
        Make obj not puesto.
        "Tomas" say the obj. "."
      End if.
  End verb.
End add.
