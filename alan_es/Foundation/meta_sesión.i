-- "meta_sesión.i" <-- "meta_session.i" <-- "meta.i"

-- Meta verbs definitions for extradiegetic commands relating
-- to the current game session (storage, quitting, etc.).

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


Synonyms comenzar, comienzo, comienza, recomenzar, reiniciar, reinicia = 'restart'.

Syntax 'restart' = 'restart'.

Meta verb 'restart'
  Does
    Restart.
End verb.


Synonyms puntos, puntaje, puntuacion, puntuación = 'score'.

Syntax 'score' = 'score'.

Meta verb 'score'
  Does
    Score.
End verb 'score'.


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

-- @TODO: I'm not sure whether this commented out UNDO verb was created when
--        ALAN didn't have an UNDO command, or whether it's purpose is to
--        disable undoing in an adventure. Should try the latter and, if it
--        works add a note about it, otherwise just delete the UNDO verb.

-- Syntax undo = undo.
--
-- Meta verb undo
--   Does "Unfortunately you cannot 'undo' commands in this game."
-- End verb.
