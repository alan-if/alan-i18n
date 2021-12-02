-- "meta_partita.i" <-- "meta_session.i" <-- "meta.i"

-- Meta verbs definitions for extradiegetic commands relating
-- to the current game session (storage, quitting, etc.).

--==============================================================================
--                   Q U I T T I N G   &   R E S T A R T I N G
--==============================================================================

Synonyms q = 'quit'.

Syntax abbandona_partita = abbandona.
       abbandona_partita = abbandona partita.
       abbandona_partita = 'quit'.

Meta verb abbandona_partita
  Does quit.
End verb.


Syntax ricomincia_partita = ricomincia.
       ricomincia_partita = ricomincia partita.
       ricomincia_partita = 'restart'.

Meta verb ricomincia_partita
  Does restart.
End verb.

--==============================================================================
--                      S A V I N G   &   R E S T O R I N G
--==============================================================================

Syntax salva_partita = salva.
       salva_partita = salva partita.
       salva_partita = 'save'.

Meta verb salva_partita
  Does
    Save.
    "Fatto."
End verb.


Syntax carica_partita = carica.
       carica_partita = carica partita.
       carica_partita = 'restore'.

Meta verb carica_partita
  Does
    Restore.
    "Fatto.$n"
    Look.
End verb.

--==============================================================================
--                        G A M E   T R A N S C R I P T S
--==============================================================================

Synonyms 'transcript' = trascrizione.

Syntax  trascrizione0    = trascrizione.
        trascrizione_on  = trascrizione 'on'.
        trascrizione_on  = trascrizione attivata.
        trascrizione_off = trascrizione 'off'.
        trascrizione_off = trascrizione disattivata.

Meta verb trascrizione0
  Does
    "Puoi avviare/interrompere la trascrizione della partita
     in corso tramite i comandi TRASCRIZIONE ON/OFF."
End verb.

Meta verb trascrizione_on
  Does
    Transcript on. "Trascrizione avviata."
End verb.

Meta verb trascrizione_off
  Does
    Transcript off. "Trascrizione terminata."
End verb.

--==============================================================================
--                       A G A I N ,   U N D O ,   E T C .
--==============================================================================

Synonyms g = rifai.

Syntax rifai = rifai.
       rifai = ancora.

Meta verb rifai
  Does "Il comando ANCORA non è disponibile.
        In alternativa, usa i tasti 'su' e 'giù'
        per navigare tra i comandi precedenti."
End verb.

-- UNDO is one of the very few hard-coded commands built into the ALAN terps.
-- It's not possible to use Synonyms to support its Italian translation
-- counterpart (e.g. 'annulla') because it wouldn't map to any author-defined
-- words -- i.e. the 'UNDO' word is not in the game dictionary, it's a special
-- command intercepted by the parser.
