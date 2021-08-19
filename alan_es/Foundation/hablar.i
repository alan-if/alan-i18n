-- "hablar.i" <-- "talk.i"


-- Para verbos como 'preguntar' y 'decir' necesitas programar indivualmente las
-- respuestas a cada tema (u 'obj') para cada actor que quieras que responda a
-- dicho tema.  Recuerda usar la clausula 'when' para que los actores solo
-- respondan cuando se habla con ellos (¡y no cuando son el *sujeto* de la
-- conversación!) En la Sección 3.7.1 - 'verb alternatives' - del manual en
-- inglés de Alan .  p.e:
--
-- Actor Simon
--   ....
--   Verb preguntar
--     When act
--       Does only
--         If tema = pelota then
--           "Simón responde ""Me encanta el deporte.
--            Mi favorito, el futbol."""
--         elsIf obj = fred then
--           .....
--         else
--           "Simón te mira extrañado. ""Lo siento,
--            no se nada de eso."""
--         End if.
--    End Verb preguntar.
--    ....
-- End Actor Simon.


Add to every thing
  Is not habla.
End add to thing.

Add to every actor
  Is habla.
End add to actor.


Synonyms
  grita, grito,
  chilla, chillo, chillar,
  vocifera, vocifero, vociferar,
  brama, bramo, bramar = gritar.

Syntax
  gritar = gritar.

Verb gritar
  Does
    "Haces mucho ruido..."
End verb.


Synonyms
  di, digo, dile = decir.

Syntax
  decir = decir (tema)!
    Where tema IsA thing
      else "Eso no lo puedes decir."

Add to every thing
  Verb decir
    Does
      Say tema. "... ¡Qué concepto tan hermoso!"
  End verb.
End add to.

Syntax
  decir_a = decir (tema)! a (act)
    Where tema IsA thing
      else "No puedes decirlo."
    And act IsA thing
      else "No puedes hablar con eso."
  decir_a = decir (tema)! (act).

Add to every thing
  Verb decir_a
    When act
      Check act has habla
        else "No puedes hablar con eso."
    Does
      Say the act. "no parece interesado."
  End verb.
End add to.

Synonyms
  pregunto, pregunta, preguntale = preguntar.
Syntax
  preguntar = preguntar (act) por (tema)!
    Where tema IsA thing
      else "No puedes preguntar por eso."
    And act IsA thing
      else "No puedes hablar con eso."
  preguntar = preguntar a (act) por (tema)!.
  preguntar = preguntar a (act) por el (tema)!.
  preguntar = preguntar al (act) por (tema)!.
  preguntar = preguntar al (act) por el (tema)!.
  preguntar = preguntar a el (act) por (tema)!.
  preguntar = preguntar a el (act) por el (tema)!.
  preguntar = preguntar (act) (tema)!.

Add to every thing
  Verb preguntar
    When act
      Check act has habla
        else "No puedes hablar con eso."
    Does
      Say the act. "dice ""¡No sé nada sobre" say the tema. "!"""
  End verb.
End add to.


Synonyms
  habla, hablo,
  charla, charlo, charlar = hablar.
  acerca = sobre.

Syntax
  hablar_con = hablar con (act) sobre (tema)!
    Where tema IsA thing
      else "No puedes preguntar por eso."
    And act IsA thing
      else "No puedes hablar con eso."
  hablar_con = hablar (act) sobre (tema)!.
  hablar_con = hablar (act) sobre de (tema)!.
  hablar_con = hablar (act) sobre el (tema)!.
  hablar_con = hablar (act) (tema)!.
  hablar_con = hablar con (act) (tema)!.
  hablar_con = hablar con (act) sobre de (tema)!.
  hablar_con = hablar con (act) sobre el (tema)!.
  hablar_con = hablar con el (act) (tema)!.
  hablar_con = hablar con el (act) sobre (tema)!.
  hablar_con = hablar con el (act) sobre de (tema)!.
  hablar_con = hablar con el (act) sobre el (tema)!.

Add to every thing
  Verb hablar_con
    When tema
      Check act has habla
        else "No puedo hablar con eso."
    Does
      """No creo que deba saber sobre" say the tema. "$$,"" dice"
      Say the act. "."
  End verb.
End add to.


Syntax
  hablar_con_act = hablar con (act)
    Where act IsA thing
      else "No puedes hablar con eso."
  hablar_con_act = hablar (act).
  hablar_con_act = hablar al (act).
  hablar_con_act = hablar a el (act).
  hablar_con_act = hablar con el (act).

Add to every thing
  Verb hablar_con_act
    Check act has habla
      else "No puedes hablar con eso."
    Does
      Say the act. "te mira, aparentemente pensando si tienes algo
      específico sobre lo que hablar."
  End verb.
End add to.
