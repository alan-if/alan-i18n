-- "poner.i" <-- "put.i"

Synonyms
  meto, mete, meter,
  pongo, pone, pon,
  inserto, inserta, insertar = poner.


Syntax
  poner = poner (obj) *
    Where obj IsA object
      else "No lo puedes poner en ningún sitio."

Add to every object
  Verb poner
    Check obj is not ornamentale else
      If obj is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And obj in hero
      else say msg:no_tienes_P1.
    Does
      Locate obj here.
      -- In case item was being worn:
      Set portador of obj to nadie.
      Make obj not puesto.
      "Dejad" say obj:adj_suf. "."
  End verb.
End add to.


Syntax
  poner_en = poner (obj1) en (obj2)
    Where obj1 IsA object
      else "No puedes poner eso en ningún lugar."
    And obj2 IsA container
      else "No puedes poner nada en $+1."
  poner_en = dejar (obj1) en (obj2).

Add to every object
  Verb poner_en
    When obj1
      Check obj1 is not ornamentale else
        If obj1 is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And obj2 is not ornamentale else
        If obj2 is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And obj1 in hero
        else say msg:no_tienes_P1.
      And obj1 <> obj2
        else "¡No puedes poner algo dentro de si mismo!"
      And obj2 <> hero
        else "¡No puedes poner $1 dentro de tí!"
    Does
      Locate obj1 in obj2.
      -- Check that operation succeeded
      -- (could fail due to TAKING clause):
      If obj1 directly in obj2
        then
          -- In case item was being worn:
          Set portador of obj1 to nadie.
          Make obj1 not puesto.
          "Hecho."
      End if.
    End verb.
End add to.

-- @FIXME: All the syntaxes with the "de" variation (e.g. "cerca de") are not
--         working! The parser seems to consider "de" as part of the parameter.
--         I've tried putting the variation with "de" first, but to no avail.
--         MUST find a way to fix this, or proper commands won't be understood!

Syntax
  poner_cerca = poner (obj1) cerca (obj2)
    Where obj1 IsA object
      else "No puedes poner eso en ningún lugar."
    And obj2 IsA thing
      else "No puedes poner nada cerca $+2"
  poner_cerca = poner (obj1) cerca de (obj2). -- @CHECK: Is it working? (See #43)

  poner_detras = poner (obj1) detras (obj2)
    Where obj1 IsA object
      else "No puedes poner eso en ningún lugar."
    And obj2 IsA thing
      else "No puedes poner nada tras $+2"
  poner_detras = poner (obj1) detras de (obj2). -- @CHECK: Is it working? (See #43)
  poner_detras = poner (obj1) tras (obj2).
  poner_detras = poner (obj1) tras de (obj2). -- @CHECK: Is it working? (See #43)

  poner_sobre = poner (obj1) sobre (obj2)
    Where obj1 IsA object
      else "No puedes poner eso en ningún lugar."
    And obj2 IsA thing
      else "No se puede poner nada sobre $+1."

  poner_bajo = poner (obj1) debajo (obj2)
    Where obj1 IsA object
      else "No puedes poner eso en ningún lugar."
    And obj2 IsA thing
      else "No puedes poner nada bajo $+1."
  poner_bajo = poner (obj1) debajo de (obj2). -- @CHECK: Is it working? (See #43)

Add to every object
  Verb poner_cerca, poner_detras, poner_sobre, poner_bajo
    When obj1
      Check obj1 is not ornamentale else
        If obj1 is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And obj2 is not ornamentale else
        If obj2 is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And obj1 in hero
        else say msg:no_tienes_P1.
      And obj2 not in hero
        else
          "Llevas $+2."
          ". Si quieres tomar $+1simplemente dilo."
    Does
      "¡Naaah!. Prefiero poner $+1en el suelo."
      Locate obj1 at obj2.
      -- In case item was being worn:
      Set portador of obj1 to nadie.
      Make obj1 not puesto.
    End verb.
End add to.
