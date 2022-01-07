-- "parlare.i" <- "talk.i"


-- for verbs like 'ask' and 'tell' you need to individually program
-- responses to each topic (ie 'ogg') for any actor who you want to
-- respond to that topic.  Remember to use the 'when' clause so that
-- actors only respond when they're being talked to (and not when
-- they're the *subject* of the conversation!)  see Section 3.7.1 -
-- 'verb alternatives' - in the Alan manual.  eg:
--
-- Actor simon
--   ....
--   Verb ask
--     When png
--       Does only
--         If argomento = ball then
--           "Simon replies ""I love playing ball sports.
--            Football is my favourite."""
--         ElsIf ogg = fred then
--           .....
--         Else
--           "Simon shrugs. ""Sorry, I don't know anything
--            about that."""
--         End if.
--   End verb.
--   ....
-- End Actor Simon.


Add to every thing
  Can not parlare.
End add.

Add to every actor
  Can parlare.
End add.


Synonyms strilla, urla = grida.

Syntax gridare = grida.

Verb gridare
  Does
    "Gridi a squarciagola..."
End verb.

-- @NOTE: Scenario objects are allowed as argomento (topic)!

-- @TRANSLATE: say_word Syntax + Verb + responses

Syntax say_word = 'say' (argomento)!
  Where argomento IsA thing
    else "You can't say that." -- @TRANSLATE!

Add to every thing
  Verb say_word
    Does
      "$1? That's a nice word!" -- @TRANSLATE!
  End verb.
End add.

-- @NOTE: Why (png) is a thing a not an actor???

Syntax
  dire_a = dì (argomento)! a (png)   -- say_to
    Where argomento IsA thing
      else "You can't say that." -- @TRANSLATE!
    And png IsA thing
      else "You can't talk to that." -- @TRANSLATE!
  dire_a = dì a (png) (argomento)!.

Add to every thing
  Verb dire_a
    When png
      Check png is not scenario else
        If png is plurale
          then say msg:scenario_P1_pl.
          else say msg:scenario_P1_sg.
        End if.
      And png can parlare
        else "You can't talk to that." -- @TRANSLATE!
    Does
      Say the png. "doesn't seem interested." -- @TRANSLATE!
  End verb.
End add.


Synonyms circa = riguardo.

-- @NOTE: Why (png) is a thing a not an actor???

Syntax
  domandare = domanda a (png) di (argomento)!   -- ask
    Where argomento IsA thing
      else "Non è possibile conversare riguardo $+2!"
    And png IsA thing
      else "Non è possibile conversare con $+1!"
  domandare = domanda a (png) riguardo (argomento)!.
  domandare = chiedi a (png) di (argomento)!.
  domandare = chiedi a (png) riguardo (argomento)!.
--Ordine dei parametri invertito:
  domandare = domanda di (argomento)! a (png).
  domandare = domanda riguardo (argomento)! a (png).
  domandare = chiedi di (argomento)! a (png).
  domandare = chiedi riguardo (argomento)! a (png).

Add to every thing
  Verb domandare
    When png
      Check png is not scenario else
        If png is plurale
          then say msg:scenario_P1_pl.
          else say msg:scenario_P1_sg.
        End if.
      And png can parlare
        else "Non è possibile conversare con $+1!"
      Does
        "$+1"
        If png is plurale
          then "sostengono di non sapere nulla circa $+2."
          else "risponde, ""Non so nulla riguardo"
               say argomento:prep_A. "$2!"""
        End if.
  End verb.
End add.

-- @NOTE: Why (png) is a thing a not an actor???

Syntax
  raccontare = racconta a (png) di (argomento)!  -- talk_to
    Where argomento IsA thing
      else "Non è possibile conversare riguardo $+2!"
    And png IsA thing
      else "Non è possibile conversare con $+1!"
  raccontare = parla a (png) di (argomento)!.
  raccontare = parla con (png) di (argomento)!.
  raccontare = informa (png) di (argomento)!.
  raccontare = informa (png) su (argomento)!.
  raccontare = dì a (png) di (argomento)!.

Add to every thing
  Verb raccontare
    When argomento
      Check png is not scenario else
        If png is plurale
          then say msg:scenario_P1_pl.
          else say msg:scenario_P1_sg.
        End if.
      And png can parlare
        else "Non è possibile conversare con $+1!"
      Does
        "$+1 non mostra"
        If png is plurale
          then "$$no"
        End if. "particolare interesse al riguardo."
  End verb.
End add.

-- @NOTE: Why (png) is a thing a not an actor???

Syntax
  parlare_con = parla con (png) -- talk_to_a
    Where png IsA thing
      else "Non è possibile conversare con $+1!"
  parlare_con = parla a (png).

Add to every thing
  Verb parlare_con
    Check png is not scenario else
      If png is plurale
        then say msg:scenario_P1_pl.
        else say msg:scenario_P1_sg.
      End if.
    And png can parlare
      else "Non è possibile conversare con $+1!"
    Does
      "$+1 ti guarda"
      If png is plurale
        then "$$no"
      End if.
      "con espressione interrogativa, come a domandarsi
       se hai in mente qualcosa di specifico di cui parlare."
  End verb.
End add.
