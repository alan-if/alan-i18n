-- "verbosità.i" -> brief.i

--
-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode.
--

Syntax  modalità_lunga = modalità lunga.
        modalità_lunga = verbose.

Meta verb modalità_lunga
  Does
    Visits 0.
    "Il gioco è ora in modalità" STYLE EMPHASIZED.
    "lunga" STYLE NORMAL. ", le descrizioni dei luoghi
     saranno mostrate sempre (anche se già visitati)."
End verb.


Syntax  modalità_breve = modalità breve.
        modalità_breve = modalità corta.
        modalità_breve = brief.

Meta verb modalità_breve
  Does
    Visits 1000.
    "Il gioco è ora in modalità" STYLE EMPHASIZED.
    "breve" STYLE NORMAL. ", le descrizioni dei
     luoghi già visitati non saranno più mostrate."
End verb.
