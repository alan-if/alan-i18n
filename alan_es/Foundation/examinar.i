-- "examinar.i" <-- "examine.i"

Add to every thing
  Is
    examinable.
    buscable.
  Has xDesc "". -- Shown with 'examina', if not empty string.
End add to thing.

Add to every actor
  Is not buscable.
End add to actor.

----

Synonyms
  x, ex, examina, examino, estudio, estudia, estudiar = examinar.

Syntax
  examinar = examinar (obj) *
    Where obj IsA thing
      else "¡No puedes examinar" say the obj. "!"
  examinar = examinar el (obj) *.

Add to every thing
  Verb examinar
    Check obj is examinable
      else "No puedes examinar" say the obj. "."
    Does
      If xDesc of obj <> ""
        then say xDesc of obj.
        else "No hay nada particular acerca de" say the obj. "."
      End if.
  End verb.
End add to.

Add to every actor
  Verb examinar
    Does after
      If this <> hero
        then
          -- ------------------
          -- List carried items
          -- ------------------
          -- Don't say anything if the actor is not carrying anything.
          Set temp:cnt to count directly in this, is not puesto.
          If  temp:cnt <> 0
            then "$+1"
              If this is not plural
                then "lleva"
                else "llevan"
              End if.
              For each artículo_llevado directly in this, is not puesto
                do
                  Say an artículo_llevado.
                  Decrease temp:cnt.
                  Depending on temp:cnt
                    = 1 then "y"
                    = 0 then "."
                    else ","
                  End depend.
              End for.
          End if.
          -- ------------------------
          -- List worn clothing items
          -- ------------------------
          -- Don't say anything if the actor is not wearing anything.
          Set temp:cnt to count directly in this, is puesto.
          If  temp:cnt <> 0
            then "$+1" "lleva"
              If this is not plural
                then "puest$$"
                  If this is femenina
                    then "a"
                    else "o"
                  End if.
                else "$$n puest$$"
                  If this is femenina
                    then "as"
                    else "os"
                  End if.
              End if.
              For each artículo_puesto directly in this, is puesto
                do
                  Say an artículo_puesto.
                  Decrease temp:cnt.
                  Depending on temp:cnt
                    = 1 then "y"
                    = 0 then "."
                    else ","
                  End depend.
              End for.
          End if.
      End if.
  End verb examinar.
End add to actor.

----

Synonyms
  veo, ve, ver, m, l, 'look' = mirar.

Syntax
  mirar = mirar.

Verb mirar
  Does
    Look.
End verb.

Syntax
  mirar_en = 'mirar' 'en' (obj)
    Where obj IsA thing
      else "No puedes mirar dentro de" say the obj. "."
    And obj IsA container
      else "No puedes mirar dentro de" say the obj. "."
  mirar_en = mirar dentro (obj).
  mirar_en = mirar dentro de (obj).
  mirar_en = mirar (obj).

Add to every object
  Verb mirar_en
    Check obj is examinable
      else "No puedes mirar en" say the obj. "."
    Does
      List obj.
  End verb.
End add to.


----

Syntax
  buscar = buscar (obj)
    Where obj IsA thing
      else "¡No puedes buscar en eso!"
  buscar = buscar en (obj).
  buscar = buscar dentro (obj).
  buscar = buscar dentro de (obj).

Add to every object
  Verb buscar
    Check obj is buscable
      else "No puedes buscar en" say the obj. "."
    Does
      "No encuentras nada de interés."
  End verb.
End add to.
