-- "messages_sv.i" | 2021/07/18 | ALAN 3.0beta7
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

-- Använd denna mall för att överrida standardmeddelandena som är inbyggda i Alan
-- med dina egna anpassade texter. Texterna som finns här är samma som de som
-- finns inbyggda om du väljer svenska som språk.

-- Du kan finjustera meddelandena genom att lägga till extra kod i MESSAGE-
-- definitionerna. För mer information see Alan-manualens avsnitt
-- "§3.15. MESSAGEs".

-- För mer en detaljerad förklaring av varje medddelande och hur den används, se
-- ALAN-manualen "Appendix C.1. Input Response Messages".

--------------------------------------------------------------------------------

MESSAGE

MORE: "<Mera>"

-- =============================================================================

-- BESKRIVNINGAR

-- =============================================================================

--------------------------------------------------------------------------------
-- Spelarens plats
--------------------------------------------------------------------------------

AGAIN: "(igen)"

SEE_START: "Det finns $01"
SEE_COMMA: ", $01"
SEE_AND: "och $01"
SEE_END: "här."

--------------------------------------------------------------------------------
-- Behållare
--------------------------------------------------------------------------------

CONTAINS: "$+1 innehåller"
CONTAINS_COMMA: "$01,"
CONTAINS_AND: "$01 och"
CONTAINS_END: "$01."

IS_EMPTY: "$+1 är tom."

--------------------------------------------------------------------------------
-- Aktörers inventarier
--------------------------------------------------------------------------------

CARRIES: "$+1 bär på"
EMPTY_HANDED: "$+1 är tomhänt."

-- =============================================================================

-- FELAKTIGA KOMMANDON

-- =============================================================================

NO_SUCH: "Jag ser ingen $1 här."
NO_WAY: "Du kan inte gå åt det hållet."
CANT0: "Det går inte att göra."
IMPOSSIBLE_WITH: "Det går inte med $+1."

CAN_NOT_CONTAIN: "$+1 kan inte innehålla $+2."
CONTAINMENT_LOOP: "Det är omöjligt att stoppa $+1 i sig själv."
CONTAINMENT_LOOP2: "Det är omöjligt att stoppa $+1 i
                    $+2 eftersom $+2 redan är inuti $+1."

-- =============================================================================

-- PARSNINGSPROBLEM

-- =============================================================================

UNKNOWN_WORD: "Jag känner inte till ordet '$1'."
WHAT: "Jag förstår inte."
WHAT_WORD: "Jag vet inte vad du menar med '$1'."
MULTIPLE: "Du kan inte ange flera objekt tillsammans med verbet '$v'."
NOUN: "Du måste ange ett substantiv."

--------------------------------------------------------------------------------
-- Felaktig användning av OCH och UTOM
--------------------------------------------------------------------------------

AFTER_BUT: "Det borde vara minst ett objekt efter '$1'."
BUT_ALL: "Du kan bara använda '$1' efter '$2'."
NOT_MUCH: "Det blir inte så mycket kvar att $v då!"

--------------------------------------------------------------------------------
-- Flertydighet
--------------------------------------------------------------------------------

WHICH_START: "Jag vet inte om du menar $+1"
WHICH_COMMA: ", $+1"
WHICH_OR: "eller $+1."

WHICH_PRONOUN_START: "Jag vet inte vad du menar med '$1',"
WHICH_PRONOUN_FIRST: "$+1"
    ---------------------------------------------
    -- NOTE: Second to last candidates are listed
    --       using WHICH_COMMA and WHICH_OR.
    ---------------------------------------------

-- =============================================================================

-- DIALOGER

-- =============================================================================

    ----------------------------------------------------------------------
    -- NOTE: Meddelanden som är frågor har ett blanksteg efter frågetecknet
    --       ("? "). Detta ger ett mellanrum mellan '?' och svaret som
    --       användaren skriver in.
    ----------------------------------------------------------------------

REALLY: "Är du säker (tryck RETUR för ja) ? "

QUIT_ACTION: "Vad vill du göra, UNDO, RESTART, RESTORE or QUIT ? "
    --------------------------------------------------------------
    -- NOTE: De angivna svarsalternativen UNDO, RESTART, RESTORE
    --       och QUIT är hårdkodade i ALAN och kan inte ändras.
    --       Du bör inte översätta orden i meddelandet eftersom
    --       användaren då inte vet vad som är giltiga svar.
    --------------------------------------------------------------

HAVE_SCORED: "Du har samlat $1 poäng av $2 på $3 drag."

UNDONE: "'$1' ogjort."
NO_UNDO: "Det finns inget att göra ogjort."

--------------------------------------------------------------------------------
-- Spara spelomgången
--------------------------------------------------------------------------------

SAVE_WHERE: "Spara äventyret i vilken fil"
SAVE_OVERWRITE: "Filen fanns redan, skriva över (tryck RETUR för ja) ? "
SAVE_FAILED: "Tyvärr, det gick inte att spara äventyret."

--------------------------------------------------------------------------------
-- Hämta sparad spelomgång
--------------------------------------------------------------------------------

RESTORE_FROM: "Hämta sparat äventyr från vilken fil"
SAVE_MISSING: "Tyvärr, kunde inte hitta något sådant sparat äventyr."
NOT_A_SAVEFILE: "Den filen verkar inte vara ett sparat Alan spel."
SAVE_VERSION: "Tyvärr, det sparade äventyret har inte samma version."
SAVE_NAME: "Tyvärr, det var inte detta äventyr som var sparat i den filen."
