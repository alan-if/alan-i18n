-- "messages_de.i" | 2021/08/17 | 6d7ede7f37e97d63c8db5a3d2a1374 | ALAN 3.0beta7
--==============================================================================
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--------------------------------------------------------------------------------
--
--          A L A N  R U N T I M E   M E S S A G E S   T E M P L A T E
--
--------------------------------------------------------------------------------
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--==============================================================================

-- Use this template to override the standard messages built into Alan with your
-- custom messages. The message definitions shown here are the default ones for
-- the German language.

-- You can provide fine-tuned message responses by adding conditional code
-- constructs inside any MESSAGE definition. For more info on how to achieve
-- this, refer to The ALAN Manual "§3.15. MESSAGEs".

-- For a detailed explanation of each message and its usage context, refer to
-- The ALAN Manual "Appendix C.1. Input Response Messages".

--------------------------------------------------------------------------------

MESSAGE

MORE: "<Mehr>"

-- =============================================================================

-- DESCRIPTIONS

-- =============================================================================

--------------------------------------------------------------------------------
-- Player Location
--------------------------------------------------------------------------------

AGAIN: "(erneut)"

SEE_START: "Es gibt $01"
SEE_COMMA: ", $01"
SEE_AND: "und $01"
SEE_END: "hier."

--------------------------------------------------------------------------------
-- Inanimate Containers
--------------------------------------------------------------------------------

CONTAINS: "$+1 enthält"
CONTAINS_COMMA: "$01,"
CONTAINS_AND: "$01 und"
CONTAINS_END: "$01."

IS_EMPTY: "$+1 ist leer."

--------------------------------------------------------------------------------
-- Actors Inventories
--------------------------------------------------------------------------------

CARRIES: "$+1 trägt"
EMPTY_HANDED: "$+1 trägt nichts."

-- =============================================================================

-- INVALID COMMANDS

-- =============================================================================

NO_SUCH: "Ich kann hier keinen $1 sehen."
NO_WAY: "Du kannst nicht in diese Richtung gehen."
CANT0: "Du kannst das nicht tun."
IMPOSSIBLE_WITH: "Es gibt nicht mit $+1."

CAN_NOT_CONTAIN: "$+1 kan $+2 nicht trägen."
CONTAINMENT_LOOP: "Es ist unmöglich, $+1 in sich selbst zu setzen."
CONTAINMENT_LOOP2: "Es ist unmöglich, $+1 in $+2 zu setzen,
                    weil $+2 bereits in $+1 ist."

-- =============================================================================

-- PARING PROBLEMS

-- =============================================================================

UNKNOWN_WORD: "Ich kenne das Wort '$1' nicht."
WHAT: "Ich ferste nicht."
WHAT_WORD: "Ich verstehe nicht was Du mit '$1' meinst."
MULTIPLE: "Du kannst Dich nicht auf mehrere Gegenstände mit '$v' beziehen."
NOUN: "Du musst ein Gegenstandswort angeben."

--------------------------------------------------------------------------------
-- Improper use of BUT and ALL
--------------------------------------------------------------------------------

AFTER_BUT: "Du musst zum mindesten einen Gegenstand nach '$1' angeben."
BUT_ALL: "Du kannst '$1' nur nach '$2' verwenden."
NOT_MUCH: "Das überläßt viel nicht zu $v!"

--------------------------------------------------------------------------------
-- Disambiguation
--------------------------------------------------------------------------------

WHICH_START: "Ich verstehe nicht, falls Du $+1"
WHICH_COMMA: ", $+1"
WHICH_OR: "oder $+1 meinst."

WHICH_PRONOUN_START: "Ich versthe nicht, ob du mit '$1'"
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

REALLY: "Bist Du sicher (ENTER bestätigt) ? "

QUIT_ACTION: "Mö""chtest Du UNDO, RESTART, RESTORE oder QUIT ? "
    --------------------------------------------------------------
    -- NOTE: The suggested choices UNDO, RESTART, RESTORE and QUIT
    --       are hardcoded into ALAN and can't be overridden.
    --       You shouldn't translate these words in the message
    --       lest the player won't known how to reply correctly.
    --------------------------------------------------------------

HAVE_SCORED: "Du hast $1 Punkte von $2 in $3 bewegt erzielt."

UNDONE: "'$1' annuliert."
NO_UNDO: "Es gibt nichts zu annulieren."

--------------------------------------------------------------------------------
-- Saving Game Session
--------------------------------------------------------------------------------

SAVE_WHERE: "Gib den Dateinamen an, um zu speichern"
SAVE_OVERWRITE: "Ein Datei mit dieser name existiert, überschreiben (ENTER, bestätigt)? "
SAVE_FAILED: "Das Spiel konnte nicht gespeichert werden."

--------------------------------------------------------------------------------
-- Restoring Saved Game Session
--------------------------------------------------------------------------------

RESTORE_FROM: "Von welcher Datei soll das Spiel wieder hergestellt werden."
SAVE_MISSING: "Konnte das gespeicherte Spiel nicht ö""ffnen."
NOT_A_SAVEFILE: "Diese Datei scheint kein gespeichertes ALAN Spiel zu sein."
SAVE_VERSION: "Diese Datei wurde mit einer anderen Version gespeichert."
SAVE_NAME: "Diese gespeicherte Datei gehört nicht zu diesem Spiel."
