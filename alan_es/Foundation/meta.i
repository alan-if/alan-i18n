-- "meta.i"

Synonyms
  abandono, abandona, abandonar = 'quit'.
Syntax
  'quit' = 'quit'.
  q = q.

Verb 'quit'
  Does
    Quit.
End verb.

Verb q
  Does
    "Por favor escribe el comando 'abandonar' entero para salir del juego.
     $p(No puedes deshacer una instrucción abandonar. Así que, para evitar que
     accidentalmente salgas del juego por teclear 'q' cuando intentas hacer
     otra cosa, debes escribir el comando 'abandonar' al completo.)"
End verb.

Synonyms
  grabar, graba, salvar, salva = 'save'.
Syntax
  'save' = 'save'.

Verb 'save'
  Does
    Save.
    "¡Perfecto!."
End verb.

Synonyms
  restaurar, restaura, recuperar, recupera = 'restore'.
Syntax
  'restore' = 'restore'.

Verb 'restore'
  Does
    Restore.
    "Hecho.$n"
    Look.
End verb.

Synonyms
  comenzar, comienzo, comienza, recomenzar = 'restart'.
Syntax
  'restart' = 'restart'.

Verb 'restart'
  Does
    Restart.
End verb.


Synonyms
  puntos, puntaje, puntuacion, puntuación = 'score'.
Syntax
  'score' = 'score'.

Verb 'score'
  Does
    Score.
End verb 'score'.


Synonyms
  z, espera, esperar, espero = 'wait'.

Syntax
  'wait' = 'wait'.

Verb 'wait'
  Does
    "Pasa el tiempo..."
End verb.


Synonyms
  g, repetir, repite, repito = again.

Syntax
  again = again.

Verb again
  Does
    "El comando 'repetir' no está disponible, lo siento. Probablemente puedes
     utilizar los cursores arriba y abajo para moverte por tus comandos previos
     (a menos que uses el intérprete MSDOS, en ese caso puedes pulsar F3 para
     repetir tu último comando.)"
End verb.

--Syntax
--    undo = undo.

--Verb undo
--    Does
--        "Unfortunately you cannot 'undo' commands in this game."
--End verb.
