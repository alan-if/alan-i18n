-- "encender.i" <-- "turn.i"

Add to every object
  Is
    Not encendido.
    Not conmutable.
End add to object.

Synonyms
  enciendo, enciende, encende,
  prendo, prende, prender,
  inicio, inicia, iniciar = encender.

Syntax
  encender = encender (obj)
    Where obj IsA object
      else "No se puede encender."
  encender = encender el (obj).


Add to every object
  Verb encender
    Check obj is conmutable
      else "No puedes encender" say the obj. "."
    And obj is not encendido
      else "Eso ya está encendido"
    Does
      Make obj encendido.
      "Enciendes" say the obj. "."
    End verb.
End add to.

Synonyms
  apago, apaga,
  extingo, extingue, extinguir,
  sofoco, sofoca, sofocar = apagar.

Syntax
  apagar = apagar (obj)
    Where obj IsA object
      else "No se puede apagar."
  apagar = apagar el (obj).

Add to every object
  Verb apagar
    Check obj is conmutable
      else "No se puede apagar."
    And obj is encendido
      else "Ya está apagado."
    Does
      Make obj not encendido.
      "Apagas" say the obj. "."
  End verb.
End add to.
