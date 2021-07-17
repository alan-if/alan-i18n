
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
-- the English language.

-- You can provide fine-tuned message responses by adding conditional code
-- constructs inside any MESSAGE definition. For more info on how to achieve
-- this, refer to The ALAN Manual "§3.15. MESSAGEs".

-- For a detailed explanation of each message and its usage context, refer to
-- The ALAN Manual "Appendix C.1. Input Response Messages".

--------------------------------------------------------------------------------

MESSAGE

MORE: "<More>"

-- =============================================================================

-- DESCRIPTIONS

-- =============================================================================

--------------------------------------------------------------------------------
-- Player Location
--------------------------------------------------------------------------------

AGAIN: "(again)"

SEE_START: "There is $01"
SEE_COMMA: ", $01"
SEE_AND: "and $01"
SEE_END: "here. "

--------------------------------------------------------------------------------
-- Inanimate Containers
--------------------------------------------------------------------------------

CONTAINS: "$+1 contains"
CONTAINS_COMMA: "$01,"
CONTAINS_AND: "$01 and"
CONTAINS_END: "$01."

IS_EMPTY: "$+1 is empty."

--------------------------------------------------------------------------------
-- Actors Inventories
--------------------------------------------------------------------------------

CARRIES: "$+1 carries"
EMPTY_HANDED: "$+1 is empty-handed."

-- =============================================================================

-- INVALID COMMANDS

-- =============================================================================

NO_SUCH: "I can't see any $1 here."
NO_WAY: "You can't go that way."
CANT0: "You can't do that."
IMPOSSIBLE_WITH: "That's impossible with $+1."

CAN_NOT_CONTAIN: "$+1 can not contain $+2."
CONTAINMENT_LOOP: "Putting $+1 in itself is impossible."
CONTAINMENT_LOOP2: "Putting $+1 in $+2 is impossible
                    since $+2 already is inside $+1."

-- =============================================================================

-- PARING PROBLEMS

-- =============================================================================

UNKNOWN_WORD: "I don't know the word '$1'."
WHAT: "I don't understand."
WHAT_WORD: "I don't know what you mean by '$1'."
MULTIPLE: "You can't refer to multiple objects with '$v'."
NOUN: "You must supply a noun."

--------------------------------------------------------------------------------
-- Improper use of BUT and ALL
--------------------------------------------------------------------------------

AFTER_BUT: "You must give at least one object after '$1'."
BUT_ALL: "You can only use '$1' after '$2'."
NOT_MUCH: "That doesn't leave much to $v!"

--------------------------------------------------------------------------------
-- Disambiguation
--------------------------------------------------------------------------------

WHICH_START: "I don't know if you mean $+1"
WHICH_COMMA: ", $+1"
WHICH_OR: "or $+1."

WHICH_PRONOUN_START: "I don't know what you mean by '$1',"
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

REALLY: "Are you sure (RETURN confirms) ? "

QUIT_ACTION: "Do you want to UNDO, RESTART, RESTORE or QUIT ? "
    --------------------------------------------------------------
    -- NOTE: The suggested choices UNDO, RESTART, RESTORE and QUIT
    --       are hardcoded into ALAN and can't be overridden.
    --       You shouldn't translate these words in the message
    --       lest the player won't known how to reply correctly.
    --------------------------------------------------------------

HAVE_SCORED: "You have scored $1 points out of $2 in $3 moves."

UNDONE: "'$1' undone."
NO_UNDO: "Nothing to undo."

--------------------------------------------------------------------------------
-- Saving Game Session
--------------------------------------------------------------------------------

SAVE_WHERE: "Enter file name to save in"
SAVE_OVERWRITE: "That file already exists, overwrite (RETURN confirms) ? "
SAVE_FAILED: "Sorry, save failed."

--------------------------------------------------------------------------------
-- Restoring Saved Game Session
--------------------------------------------------------------------------------

RESTORE_FROM: "Enter file name to restore from"
SAVE_MISSING: "Sorry, could not open that save file."
NOT_A_SAVEFILE:"That file does not seem to be an Alan game save file."
SAVE_VERSION: "Sorry, the save file was created by a different version."
SAVE_NAME: "Sorry, the save file did not contain a save for this adventure."
