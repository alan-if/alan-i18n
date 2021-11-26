-- "aggredire.i" -> attack.i

Add to every thing
  Can not sparare.
End add.

Add to every object
  Is not arma.
  Can not sparare. -- @DELME? (redundant! already on THING)
End add.


-- @NOTA: In Inform 6 'attacca' riconosce questi sinonimi:
--        rompi, colpisci, combatti, uccidi, tortura, lotta, sfonda, ammazza,
--        picchia.

-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNONYMS combatti, picchia = attacca.
--    SYNTAX attacca = attacca (bersaglio)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- Synonyms
--   kill, fight, hit = attack.
--   fire = shoot.

Synonyms
  combatti, picchia, attacca = aggredisci.
  fire = shoot.

Syntax
  aggredire = aggredisci (png)
    Where png IsA thing
      else "You can't attack that." -- @TRANSLATE!

Add to every thing
  Verb aggredire
    Does
      "Violence is not the answer." -- @TRANSLATE!
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX attacca_con = attacca (bersaglio) con (arma)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  aggredire_con = aggredisci (png) con (ogg)
    Where png IsA thing
      else "You can't attack that." -- @TRANSLATE!
    And ogg IsA object
      else "You can't attack anything with that!" -- @TRANSLATE!

Add to every thing
  Verb aggredire_con
    When ogg
      Check ogg in hero
        else "You don't have that object to attack with." -- @TRANSLATE!
      And ogg is arma
        else "No point attacking anything with that!" -- @TRANSLATE!
      Does
        "Violence is not the answer." -- @TRANSLATE!
  End verb.
End add.



-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX spara = spara con (arma)
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Syntax
  shoot = shoot (ogg) --> i.e. 'spara a'
    Where ogg IsA thing
      else "You can't shoot at that." -- @TRANSLATE!
  shoot = shoot 'at' (ogg).


Add to every thing
  Verb shoot
    Does
      If ogg can sparare then
        "You need to specify what to shoot at." -- @TRANSLATE!
      else
        "You need to specify what you want to shoot" -- @TRANSLATE!
        say the ogg. "with."
      End if.
  End verb.
End add.


-- @NOTE: Alan StdLib Italian:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--    SYNTAX  spara_a = spara con (arma) a (bersaglio)
--            spara_a = spara a (bersaglio) con (arma).
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- @NOTE: Le due sintassi inglesi non legano bene con le esigenze italiane.
--        'shoot_at' non può avere la sintassi "spara pistola a pippo".
--        Il problema è che l'oggetto di "spara" non può essere l'arma ma
--        piuttosto i suoi proiettili ("spara fuoco"). Non credo che in
--        inglese sia così diverso, e che questi verbi andrebbero rivisti.


-- @NOTE: (png) or (bersaglio)? Non sembra che questi verbi
--        agiscano solo su attori, ma anche su oggetti!

Syntax
  shoot_at = shoot (ogg) 'at' (png)
    Where ogg IsA object
      else "You can't shoot that." -- @TRANSLATE!
    And png IsA thing
      else "You can't shoot at that." -- @TRANSLATE!

  shoot_with = shoot (png) 'with' (ogg)
    Where ogg IsA object
      else "You can't shoot that." -- @TRANSLATE!
    And png IsA thing
      else "You can't shoot at that." -- @TRANSLATE!

Add to every thing
  Verb shoot_at
    When ogg
      Check ogg in hero
        else "You don't have that." -- @TRANSLATE!
      And ogg can sparare
        else "You can't shoot anything with that." -- @TRANSLATE!
      Does
        "Violence is not the answer." -- @TRANSLATE!
  End verb.

  Verb shoot_with
    When ogg
      Check ogg in hero
        else "You don't have that." -- @TRANSLATE!
      And ogg can sparare
        else "You can't shoot anything with that." -- @TRANSLATE!
      Does
        "Violence is not the answer." -- @TRANSLATE!
  End verb.
End add.
