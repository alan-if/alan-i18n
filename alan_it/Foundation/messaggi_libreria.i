-- "messaggi_libreria.i"

-- =============================================================================

-- Questo modulo definisce alcuni messaggi ricorrenti della libraria come
-- attributi stringa sul luogo nascosto 'msg', di modo che il loro testo possa
-- essere modificato in un unico file centrale, oltre a ridurre la ridondanza
-- delle stringhe.

-- =============================================================================


The msg IsA location at limbo. Has

  violenza_non_risposta "La violenza non è la giusta risposta a questo.".

  scenario_P1_sg "$+1 non è importante ai fini del gioco.".
  scenario_P1_pl "$+1 non sono importanti ai fini del gioco.".
  scenario_P2_sg "$+2 non è importante ai fini del gioco.".
  scenario_P2_pl "$+2 non sono importanti ai fini del gioco.".

  non_possiedi_P1 "Non possiedi $+1!".
  non_possiedi_P2 "Non possiedi $+2!".

End the msg.
