-- "meta_sesión.i" <-- "meta_session.i" <-- "meta.i"

-- Meta verbs definitions for extradiegetic commands relating
-- to the current game session (storage, quitting, etc.).

--==============================================================================
--                   Q U I T T I N G   &   R E S T A R T I N G
--==============================================================================

Synonyms abandono, abandona, abandonar = 'quit'.

Syntax 'quit' = 'quit'.
            q = q.

Meta verb 'quit'
  Does
    Quit.
End verb.

Meta verb q
  Does
    "Por favor escribe el comando 'abandonar' entero para salir del juego.
     $p(No puedes deshacer una instrucción abandonar. Así que, para evitar que
     accidentalmente salgas del juego por teclear 'q' cuando intentas hacer
     otra cosa, debes escribir el comando 'abandonar' al completo.)"
End verb.


Synonyms comenzar, comienzo, comienza, recomenzar, reiniciar, reinicia = 'restart'.

Syntax 'restart' = 'restart'.

Meta verb 'restart'
  Does
    Restart.
End verb.

--==============================================================================
--                      S A V I N G   &   R E S T O R I N G
--==============================================================================

Synonyms grabar, graba, salvar, salva, guardar, guarda = 'save'.

Syntax 'save' = 'save'.

Meta verb 'save'
  Does
    Save.
    "¡Perfecto!."
End verb.


Synonyms restaurar, restaura, recuperar, recupera = 'restore'.

Syntax 'restore' = 'restore'.

Meta verb 'restore'
  Does
    Restore.
    "Hecho.$n"
    Look.
End verb.

--==============================================================================
--                                   S C O R E
--==============================================================================

Synonyms puntos, puntaje, puntuacion, puntuación = 'score'.

Syntax 'score' = 'score'.

Meta verb 'score'
  Does
    Score.
End verb 'score'.

--==============================================================================
--                        G A M E   T R A N S C R I P T S
--==============================================================================

Syntax script0    = transcripción.

Syntax script_on  = activar transcripción.
       script_on  = transcripción on.

Syntax script_off = desactivar transcripción.
       script_off = transcripción off.

Synonyms transcripcion, scripting, 'transcript' = transcripción.

Meta verb script0
  Does
    "Para activar la transcripción del juego, escriba: ACTIVAR TRANSCRIPCIÓN.
   $nPara terminar la transcripción, escriba: DESACTIVAR TRANSCRIPCIÓN."
End verb.

Meta verb script_on
  Does
    Transcript on. "La transcripción ya ha comenzado."
End verb.

Meta verb script_off
  Does
    Transcript off. "Fin de la transcripción."
End verb.

--==============================================================================
--                       A G A I N ,   U N D O ,   E T C .
--==============================================================================

Synonyms
  g, repetir, repite, repito = again.

Syntax again = again.

Meta verb again
  Does
    "El comando 'repetir' no está disponible, lo siento. Probablemente puedes
     utilizar los cursores arriba y abajo para moverte por tus comandos previos
     (a menos que uses el intérprete MSDOS, en ese caso puedes pulsar F3 para
     repetir tu último comando.)"
End verb.

-- UNDO is one of the very few hard-coded commands built into the ALAN terps.
-- It's not possible to use SYNONYMS to support its Spanish translation
-- counterpart (e.g. 'revierte') because it wouldn't map to any author-defined
-- words -- i.e. the 'UNDO' word is not in the game dictionary, it's a special
-- command intercepted by the parser.
