-- "meta_aiuto.i" -> help.i

-- @TODO: Aggiungere meta-verbo COMANDI?


-- Synonyms
--   h = help.

Synonyms
  help, info = istruzioni.

Syntax
  istruzioni = istruzioni. -- help

Meta verb istruzioni
  -- @NOTE: Il comando PUNTEGGIO potrebbe non essere disponibile!
  --        Forse è meglio non menzionarlo.
  Does
    "In questo gioco sarò i tuoi occhi e il tuo corpo.
     Io ti descriverò l'ambiente circostante, e tu dovrai
     dirmi ciò che vorrai fare. Per esempio, se vuoi andare
     a nord, digita NORD. Potrai fare tantissime cose, come
     raccogliere oggetti, esaminarli, aprire porte, etc.
     Tenta qualsiasi azione che ti verrebbe spontanea se ti
     trovassi veramente qui!
   $pRicordati di studiare attentamente le descrizioni, dato
     che conterranno sicuramente indizi su come procedere.
   $pIl comando PUNTEGGIO ti consente di verificare come
     stai procedendo nell'avventura. I comandi SALVA e CARICA
     ti consentono di salvare e ripristinare una partita tra
     una sessione di gioco e l'altra.
   $pBuona fortuna avventuriero! (ne avrai bisogno)"
End verb.


-- Synonyms
--   hints = hint.

Synonyms
  hint, aiutino = suggerimento. -- hint

Syntax
  suggerimento = suggerimento.

Meta verb suggerimento
  Does
    "Nessun suggerimento disponibile
     (digita ISTRUZIONI se hai bisogno di aiuto)."
End verb.


-- Synonyms
--   info, notes, author = credits.

Synonyms
  credits, copyright = ringraziamenti.

Syntax ringraziamenti = ringraziamenti. -- credits
       ringraziamenti = autore.

Meta verb ringraziamenti
  Does
    "I diritti d'autore ed il copyright di questa avventura
     appartengono al suo autore.
   $pQuesta avventura è stata realizzata con ALAN IF, il sistema
     per lo sviluppo di avventure testuali creato da Thomas Nilefalk.
   $nE-mail: thomas@alanif.se
   $pPer maggiori informazioni su ALAN:
   $ihttps://www.alanif.se$p"
End verb.
