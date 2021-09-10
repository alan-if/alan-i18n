-- "escenario.i" <-- "scenery.i"

Every escenario IsA object
  Is
    Not buscable.
    Not tomable.
    Not empujable.
    Not tocable.
  Description "" -- para que no se liste en las descripciones

  Verb examinar
    Does only "Solo es escenario."
  End verb.

  Verb buscar
    Does only "No hace falta buscar nada ahí."
  End verb.

  Verb tomar
    Does only "No puedes tomarlo."
  End verb.

  Verb empujar
    Does only "No tiene sentido empujar."
  End verb.

  Verb tocar
    Does only "No hace falta tocar."
  End verb.
End every.

Every escenario_p IsA escenario
  Is plural.
End every.

Every escenario_f IsA escenario
  Is femenina.
End every.

Every escenario_fp IsA escenario
  Is femenina.
  Is plural.
End every.
