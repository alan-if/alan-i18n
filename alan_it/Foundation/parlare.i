-- "parlare.i" -> talk.i


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


Synonyms
  strilla, urla = grida.

Syntax
  gridare = grida.  -- shout

Verb gridare
  Does
    "Gridi a squarciagola..."
End verb.


Syntax
  say_word = 'say' (argomento)!
    Where argomento IsA thing
      else "You can't say that." -- @TRANSLATE!

Add to every thing
  Verb say_word
    Does
      "$1? That's a nice word!" -- @TRANSLATE!
  End verb.
End add.


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
      Check png can parlare
        else "You can't talk to that." -- @TRANSLATE!
    Does
      Say the png. "doesn't seem interested." -- @TRANSLATE!
  End verb.
End add.


Synonyms
  circa = riguardo.

Syntax
  domandare = domanda a (png) di (argomento)!   -- ask
    Where argomento IsA thing
      else "You can't ask about that." -- @TRANSLATE!
    And png IsA thing
      else "You can't talk to that." -- @TRANSLATE!
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
      Check png can parlare
        else "You can't talk to that." -- @TRANSLATE!
      Does
        Say the png.
        "says ""I don't know anything about" -- @TRANSLATE!
        say the argomento. "!"""
  End verb.
End add.

Syntax
  raccontare = racconta a (png) di (argomento)!  -- talk_to
    Where argomento IsA thing
      else "You can't ask about that." -- @TRANSLATE!
    And png IsA thing
      else "You can't talk to that." -- @TRANSLATE!
  raccontare = parla a (png) di (argomento)!.
  raccontare = parla con (png) di (argomento)!.
  raccontare = informa (png) di (argomento)!.
  raccontare = informa (png) su (argomento)!.
  raccontare = dì a (png) di (argomento)!.

Add to every thing
  Verb raccontare
    When  argomento
      Check png can parlare
        else "You can't talk to that." -- @TRANSLATE!
      Does
        """I don't think I need to know about" -- @TRANSLATE!
        say the argomento. "$$,"" says"
        say the png. "."
  End verb.
End add.


Syntax
  parlare_con = parla con (png) -- talk_to_a
    Where png IsA thing
      else "You can't talk to that." -- @TRANSLATE!
  parlare_con = parla a (png).

Add to every thing
  Verb parlare_con
    Check png can parlare
      else "You can't talk to that." -- @TRANSLATE!
    Does
      Say the png.
      "looks at you, seemingly wondering if you have
       anything specific to talk about." -- @TRANSLATE!
  End verb.
End add.
