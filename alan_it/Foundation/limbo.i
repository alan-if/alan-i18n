-- "limbo.i" <- "nowhere.i"

-- Il `limbo` è un luogo speciale la cui definizione ha duplice scopo:
--
-- 1. Mettere a disposizione un non-luogo in cui poter parcheggiare tutte le
--    istanze che si vogliono fare sparire dal gioco.
-- 2. Definire le direzioni di spostamento predefinite.
--
-- Siccome Alan non consente la creazione o la distruzione dinamica di instanze
-- durante il gioco, l'unico modo per poter far sparire di scena un'instanza è
-- collocarla in un luogo a cui il giocatore non potrà aver accesso -- ossia,
-- il limbo.
--
-- Quanto alla definizione delle direzioni predefinite, Alan non dispone di una
-- classe speciale per le direzioni, né definisce alcuna direzione predefinta;
-- Alan estrae la lista delle direzioni dalle varie occorrenze di `EXIT` nel
-- sorgente dell'avventura. Per questo motivo, la libreria definisce le
-- direzioni standard sull'istanza di luogo `limbo`:

The limbo IsA location.
  Exit  nord,
        sud,
        est,
        ovest,
        nordest,
        sudest,
        sudovest,
        nordovest,
        su,
        giù
    to limbo.
End the limbo.

-- @EDITED: DIREZIONI RIMOSSE (vedi note sotto):
--     'in',  --> per "dentro" (magari come sinonimo?)
--      fuori --> per "esci"


-- Oltre alle direzioni predefinite sul `limbo`, la libreria definisce anche
-- dei sinonimi comuni per esse, che includono sintassi alternative e comandi
-- brevi:

Synonyms
    nn    = nord.
    ss    = sud.
    ee    = est.
    oo    = ovest.

    nne   = nordest.
    sse   = sudest.
    sso   = sudovest.
    nno   = nordovest.

    giu   = giù.
--  sopra = su.   => Già definito in "grammatica.i"

-- ==========================================================================
-- La ragione per cui non è stato possibile definire le direzioni brevi
-- classiche (N, E, S, O, NE, NO, SE, SO) è dovuto al fatto che alcune di
-- esse avrebbero conflitto con altri identificativi definiti altrove:
--
--   E -> EST        :: Ignorato dal parser dei comandi poiché "E" è una
--                      noise word ("rumore").
--   A -> SU (alto)  :: Causerebbe conflitti con la preposizione "A".
--   NO -> NORDOVEST :: In conflitto con la sintassi del verbo 'rispondi_No'
--                      (per le risposte Sì/No).
--   SOTTO -> GIÙ    :: In conflitto con la sintassi "guarda sotto".
--
-- Ragion per cui si è adottato il raddoppiamento della prima lettera, dato
-- che offre un sistema di abbreviazioni coerente ed intuitivo, sebbene non
-- elegante come il sistema classico.
-- ==========================================================================

-- [REMOVED: 'in']
-- ==========================================================================
-- (1) Ho rimosso `in` dalle direzioni predefinite.
-- (2) Dovrei implementare `in` come sinonimo di `dentro`?
--
-- 1) L'uso di "in" come direzione non mi convinceva; semmai "dentro" sarebbe
--    accettabile, ma anche in questo caso "entra" sarebbe meglio.
--
-- 2) In molti verbi i due termini sono equivalenti -- "guarda nella/dentro
--    la scatola", "entra in/dentro casa". Ma per altri verbi non è cosi, e.s.
--
--      "guarda in basso"          !=  "guarda dentro basso"
--      "scrivi in corsivo/calce"  !=  "scrivi dentro corsivo/calce"
--
--    Forse conviene lasciare all'autore il compito di definire le sintassi
--    alternative per quei verbi che le prevedono.
-- ==========================================================================

-- [REMOVED: 'fuori']
-- ==========================================================================
-- Ho rimosso `fuori` dalle direzioni di base. L'uso del verbo "esci" sarebbe
-- più appropriato, o chiamare una direzione "esci" (se non confligge con
-- l'omonimo verbo -- da verificare!).
-- ==========================================================================
