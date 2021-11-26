﻿--- "messaggi_runtime.i" -> (nessuno)

--==============================================================================
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--------------------------------------------------------------------------------
--
--  Messaggi runtime di Alan
--
--------------------------------------------------------------------------------
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--==============================================================================
Message

  --==============================================================================
  -- DESCRIZIONE LUOGO
  --==============================================================================
  SEE_START: "Puoi vedere $01"
  SEE_COMMA: ", $01"
  SEE_AND: "e $01"
  SEE_END: "qui."
  --==============================================================================
  -- COMANDI NEGATI...
  --==============================================================================
  CANT0:          "Non lo puoi fare."
  NO_WAY:         "Non puoi andare in quella direzione." -- "You can't go that way."
  --@@ NO_WAY: i6: "Non puoi andare in quella direzione."
  --@@ NO_WAY: i7: "Non puoi andare da quella parte."
  --==============================================================================
  -- PROBLEMI NEL PARSING DEI COMANDI
  --==============================================================================
  AFTER_BUT:      "Devi specificare almeno un oggetto dopo '$1'."

  -- Sostituito '$2' con "TUTTO", se no stampava "all":
  -- BUT_ALL:     "Puoi usare '$1' solo DOPO '$2'."
  BUT_ALL:        "Puoi usare '$1' solo DOPO 'tutto' (es. ""$v tutto $1..."")."

  MULTIPLE:       "Non puoi usare più di un oggetto con '$v'."
  NO_SUCH:        "Qui non puoi vedere nulla del genere." -- "You can't see any $1 here."
  NOT_MUCH:       "Così non resta nulla per il verbo '$v'!" -- "That doesn't leave much to $v!"
  NOUN:           "Devi specificare un sostantivo."-- "You must supply a noun."
  UNKNOWN_WORD:   "Non conosco la parola '$1'."
  WHAT:           "Non ho capito la frase."
  WHAT_WORD:      "Non mi è chiaro cosa intendi con '$1'."

  -- Disambiguazione ogetti/attori:
  -- ==============================
  WHICH_START:    "Non mi è chiaro se intendi dire $+1"
  WHICH_COMMA:    ", $+1"
  WHICH_OR:       "o $+1."

  -- Disambiguazione pronomi:
  -- ========================
  WHICH_PRONOUN_START: "Non mi è chiaro se con '$1'"
  WHICH_PRONOUN_FIRST: "intendi dire $+1"
  --============================================================================
  -- RICOMINCIA PARTITA
  --============================================================================
  REALLY:         "Sei sicuro (premi INVIO per confermare)?"
  QUIT_ACTION:    "Cosa vuoi fare: RESTART, RESTORE, QUIT o UNDO? "
  --| NOTA: Le possibili risposte a questo messaggio (RESTART, RESTORE, QUIT e
  --|       UNDO) sono codificate in Alan e non possono essere tradotte, quindi
  --|       per non confondere il giocatore è meglio lasciarle in inglese.
  --============================================================================
  -- SALVA PARTITA
  --============================================================================
  SAVE_FAILED:    "Salvataggio della partita fallito."
  SAVE_OVERWRITE: "Esiste già un file con questo nome. Vuoi sovrascriverlo? (y)"
  SAVE_WHERE:     "Inserisci il nome del file" -- niente "." perché Alan aggiunge
                                               -- il nome di default subito dopo!
  --============================================================================
  -- CARICA PARTITA
  --============================================================================
  NOT_A_SAVEFILE: "Caricamento fallito, il file indicato non è una partita
                   salvata."
  RESTORE_FROM:   "Inserisci il nome del file" -- niente "." perché Alan aggiunge
                                               -- il nome di default subito dopo!
  SAVE_MISSING:   "Caricamento fallito, impossibile aprire il file richiesto."
  SAVE_NAME:      "Caricamento fallito, il file indicato non è una partita salvata
                   di questa avventura."
  SAVE_VERSION:   "Caricamento fallito, il file indicato è stato creato con una
                   versione diversa dell'avventura o dell'interprete."


--==============================================================================
-- LUOGHI GIÀ VISITATI
--==============================================================================


-- @TODO: Questo messaggio potrebbe essere attivabile tramite opzioni           TODO!
--        della libreria (un attributo come 'mia_AT:mostra_già_visitati')
--
--        Nota però che per mostrare l'accordo giusto con il nome visualizzato
--        del luogo servirebbe che l'attributo 'vocale' fosse disponibile anche
--        sulle 'location'. Ovviamente, attivando questa opzione l'autore avrebbe
--        anche l'onore di dover supplire l'articolo per ogni luogo creato.
--
--        Dato che l'inizializzazione grammaticale di tutta la classe 'entity'  TODO!
--        ottimizzerebbe anche altri messaggi runtime e Check nel codice, dovrei
--        cercare di unificare l'inizializzazione della grammatica in un unico
--        blocco, partendo da 'entity'. Avevo tentato di farlo su 'thing' ma ho
--        riscontrato problemi con gli attori. Dovrei riprovarci!

  AGAIN: "" ---> Messaggio da mostrare accanto al nome di luoghi già visistati.
            --  Es. "(già visitato)"


--==============================================================================
-- ERRORI DI CONTENIMENTO
--==============================================================================

  CAN_NOT_CONTAIN: "$+1 non può contenere $+2."


--==============================================================================
-- ERRORI DI INSERIMENTO IN CONTENITORI
--==============================================================================
-- Questi messaggi riferiscono tentativi di inserire oggetti in sé stessi


  CONTAINMENT_LOOP:
    "Non è possibile mettere $+1 dentro sé stess$$" SAY parameter1:vocale. "."


  CONTAINMENT_LOOP2: "Non è possibile mettere $+1 in $+2 dato che $+2"
    IF parameter2 IS NOT plurale
      THEN "è"
      ELSE "sono"
    END IF.
    "all'interno di $+1."

--==============================================================================
-- DESCRIZIONE CONTENITORI E LORO CONTENUTI
--==============================================================================
  CONTAINS:
    IF parameter1 IS NOT plurale
      THEN "$+1 contiene"
      ELSE "$+1 contengono"
    END IF.

  CONTAINS_AND: "$01 e"

  CONTAINS_COMMA: "$01"
    IF parameter1 IsA object THEN
        IF parameter1 IS indossato
          THEN "(indossat$$" SAY vocale OF parameter1. "$$)"
        END IF.
    END IF. ","

  CONTAINS_AND: "$01"
    IF parameter1 IsA object THEN
        IF parameter1 IS indossato
          THEN "(indossat$$" SAY vocale OF parameter1. "$$)"
        END IF.
    END IF. "e"

  CONTAINS_END: "$01"
    IF parameter1 IsA object THEN
        IF parameter1 IS indossato
          THEN "(indossat$$" SAY vocale OF parameter1. "$$)"
        END IF.
    END IF. "."

  ------------------------------------------------------------------------------

  CARRIES:
    IF parameter1 IS NOT plurale
      THEN "$+1 trasporta"   -- "is carrying"
      ELSE "$+1 trasportano" -- "are carrying"
    END IF.

  EMPTY_HANDED:
    "$+1 non"
    IF parameter1 IS NOT plurale
      THEN "sta"
      ELSE "stanno"
    END IF.
    "trasportando nulla."

-- =========================
-- Punteggio
-- =========================

  HAVE_SCORED:
    "Hai totalizzato $1 punt$$"
    If score = 1
      then "o"
      else "i"
    end if.
    "su $2 possibili."

  ------------------------------------------------------------------------------
  -- If a player action is impossible with a particular parameter combination,
  -- but might be possible otherwise, this message is shown to indicate that it
  -- is the action with the parameter that is impossible.

  IMPOSSIBLE_WITH: "È impossibile farlo con $+1."

  ------------------------------------------------------------------------------
  -- Il messaggio predefinito per i contenitori vuoti.

  IS_EMPTY: "$+1"
    IF parameter1 IS NOT plurale
      THEN "è"
      ELSE "sono"
    END IF.
    "vuot$$" SAY parameter1:vocale. "."

  ------------------------------------------------------------------------------

  MORE: "<Continua>" --> Trad. di "<More>"

  NO_UNDO: "Non è possible annullare ulteriormente."
        -- "No further undo available."

  UNDONE: "'$1' annullato."


-->todo(50000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == TODO
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Questa sezione contiene l'elenco delle cose da fare per ultimare l'adattamento
--| italiano del modulo delle classi.
--<

-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| Lista della spesa per le varie cosucce da fare:
--<

-->todo_checklist(.665)
--|
--| === Check-list per Doxter
--|
--| Finisci di trasformare commenti in documentazione Doxter:
--<


-->custom_attributes(100)
--| ////
--| ============================================================================
--| Custom AsciiDoc Attributes for Doxter
--| ============================================================================
--| ////

--| // Traduzione italiana degli attributi predefiniti di Asciidoctor:
--| include::attributes-it.adoc[tag=attributes-it]

--| // Definisci sostituzione di {X} con il carattere Unicode 'heavy check mark'
--| // (U+2714), usato nelle tabelle dei verbi:
--| :X: &#x2714;
--<

---< Fine del File >---
