-- "mensajes.i" <- messages_runtime.i" (added in Foundation)

Message

MORE: "<continúa>"


-- =============================================================================

-- DESCRIPTIONS

-- =============================================================================

--------------------------------------------------------------------------------
-- Player Location
--------------------------------------------------------------------------------

AGAIN: "(nuevamente)"

--  CANT: "No puedes $v $+1."
SEE_START: "Hay $01"
SEE_COMMA: ", $01"
SEE_AND: "y $01"
SEE_END: "."

--  SEE_ACTOR: "está aquí." -- @CEHCK: What was this for? Why commented out?

--------------------------------------------------------------------------------
-- Inanimate Containers
--------------------------------------------------------------------------------

-- These messages are used when listing the contents of containers, which can be
-- either container objects or actors.

CONTAINS: "$+1"
  If parameter1 is plural
    then "contienen"
    else "contiene"
  End if.

-- The IF blocks in the following group of messages adds "(being worn)" after
-- every item worn by an actor, when using `LIST actor`.

CONTAINS_COMMA: "$01"
  If parameter1 IsA object then
    If parameter1 is puesto
      then
        If parameter1 is plural
          then "(están"
            If parameter1 is femenina
              then "puestas),"
              else "puestos),"
            End if.
          else "(está"
            If parameter1 is femenina
              then "puesta),"
              else "puesto),"
            End if.
        End if.
      else ","
    End if.
  End if.

CONTAINS_AND: "$01"
  If parameter1 IsA object then
    If parameter1 is puesto
      then
        If parameter1 is plural
          then "(están"
            If parameter1 is femenina
              then "puestas)"
              else "puestos)"
            End if.
          else "(está"
            If parameter1 is femenina
              then "puesta)"
              else "puesto)"
            End if.
        End if.
    End if.
  End if. "y"

CONTAINS_END: "$01"
  If parameter1 IsA object then
    If parameter1 is puesto
      then
        If parameter1 is plural
          then "(están"
            If parameter1 is femenina
              then "puestas)."
              else "puestos)."
            End if.
          else "(está"
            If parameter1 is femenina
              then "puesta)."
              else "puesto)."
            End if.
        End if.
      else "."
    End if.
  End if.

IS_EMPTY: "$+1 no contiene nada."

--------------------------------------------------------------------------------
-- Actors Inventories
--------------------------------------------------------------------------------

CARRIES: "$+1"
  If parameter1 is not plural
    then "lleva"
    else "llevan"
  End if.

EMPTY_HANDED: "$+1 no lleva nada."

-- =============================================================================

-- INVALID COMMANDS

-- =============================================================================

NO_SUCH: "No hay $1 aquí."
NO_WAY: "No puedes ir por ahí."
CANT0: "No se puede."
IMPOSSIBLE_WITH: "Eso es imposible con $+1."

CAN_NOT_CONTAIN: "$+1 no"
  If parameter1 is plural
    then "pueden"
    else "puede"
  End if. "contener $+2."

CONTAINMENT_LOOP:
  "Poner a $+1 en sí"
  If parameter1 is femenina
    then
      If parameter1 is plural
        then "mismas"
        else "misma"
      End if.
    else
      If parameter1 is plural
        then "mismos"
        else "mismo"
      End if.
  End if.

  "es imposible."

CONTAINMENT_LOOP2:
  "Es imposible poner $+1 en $+2 porque $+2 ya está"
  If parameter2 is plural then "$$n"
  End if. "dentro de $+1."

-- =============================================================================

-- PARSING PROBLEMS

-- =============================================================================

UNKNOWN_WORD: "No entendí la palabra '$1'."
WHAT: "No entiendo bien esa frase. Redactala de nuevo."
WHAT_WORD: "No entiendo lo que quieres decir con ""$1""."
MULTIPLE: "No puedes aplicar ese verbo a varios objetos."
NOUN: "Tienes que poner un sustantivo."

--------------------------------------------------------------------------------
-- Improper use of BUT and ALL
--------------------------------------------------------------------------------

AFTER_BUT: "Tienes que poner un objeto después de $1."
BUT_ALL: "Solamente puedes usar ""$1"" después de ""$2""."
NOT_MUCH: "Eso no deja mucho."

--------------------------------------------------------------------------------
-- Disambiguation
--------------------------------------------------------------------------------

WHICH_START: "No sé si quieres decir $+1"
WHICH_COMMA: ", $+1"
WHICH_OR:    "o $+1."

WHICH_PRONOUN_START: "No estoy seguro si por '$1' quieres decir"
WHICH_PRONOUN_FIRST: "$+1"

    ---------------------------------------------
    -- NOTE: Second to last candidates are listed
    --       using WHICH_COMMA and WHICH_OR.
    ---------------------------------------------

-- =============================================================================

-- GAME-SESSION MESSAGES

-- =============================================================================

    ----------------------------------------------------------------------
    -- NOTE: Question messages add a space after the question mark ("? ").
    --       This grants spacing between the '?' and the confirmation
    --       prompt where the user will be typing the response.
    ----------------------------------------------------------------------

REALLY: "¿Estás seguro (presiona ENTER para confirmar)? "

QUIT_ACTION: "¿Quiere revertir (undo), recomenzar (restart), restaurar (restore) o salir (quit)? "
    --------------------------------------------------------------
    -- NOTE: The suggested choices UNDO, RESTART, RESTORE and QUIT
    --       are hardcoded into ALAN and can't be overridden.
    --       You shouldn't translate these words in the message
    --       lest the player won't known how to reply correctly.
    --------------------------------------------------------------

HAVE_SCORED: "Has logrado $1 puntos de un total de $2."

UNDONE: "Acción '$1' revertida."
NO_UNDO: "No hay nada que revertir."

--------------------------------------------------------------------------------
-- Saving Game Session
--------------------------------------------------------------------------------

SAVE_WHERE: "Nombre de archivo para guardar"
SAVE_OVERWRITE: "Ese archivo ya existe. ¿Desea sobreescribirlo? (ENTER confirma)"
SAVE_FAILED: "Lo siento, no pude guardar la partida."

--------------------------------------------------------------------------------
-- Restoring Saved Game Session
--------------------------------------------------------------------------------

RESTORE_FROM: "Nombre del archivo para cargar"
SAVE_MISSING: "Lo siento, no puedo abrir ese archivo."
NOT_A_SAVEFILE: "Ese archivo no parece ser una partida guardada."
SAVE_VERSION: "Lo siento, el archivo fue creado por otra versión de Alan."
SAVE_NAME: "Lo siento, el archivo no es de esta aventura."
