﻿-- "hablar.i" <-- "talk.i"


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

-- NOTE: Topic parameters (tema) are allowed to be 'ornamentale' (scenery).
--       This is one of the exceptions to the rule that all verbs should be
--       blocked on scenery objects.

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
      Check act is not ornamentale else
        If act is plural
          then say msg:ornamentale_P2_pl.
          else say msg:ornamentale_P2_sg.
        End if.
      And act has habla
        else "No puedes hablar con eso." -- @CHECK: GNA OK here?
    Does
      Say the act. "no parece interesado." -- @CHECK: GNA OK here?
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
  preguntar = preguntar (act) (tema)!.
  preguntar = preguntar a (act) por (tema)!.

Add to every thing
  Verb preguntar
    When act
      Check act is not ornamentale else
        If act is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And act has habla
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
  hablar_con = hablar con (act) (tema)!.
  hablar_con = hablar (act) (tema)!.
  hablar_con = hablar (act) sobre (tema)!.

Add to every thing
  Verb hablar_con
    When tema
      Check act is not ornamentale else
        If act is plural
          then say msg:ornamentale_P1_pl.
          else say msg:ornamentale_P1_sg.
        End if.
      And act has habla
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
  hablar_con_act = hablar a (act).

Add to every thing
  Verb hablar_con_act
    Check act is not ornamentale else
      If act is plural
        then say msg:ornamentale_P1_pl.
        else say msg:ornamentale_P1_sg.
      End if.
    And act has habla
      else "No puedes hablar con eso."
    Does
      "$+1 te mira, aparentemente pensando si tienes algo
       específico sobre lo que hablar."
  End verb.
End add to.
