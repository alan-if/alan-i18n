-- "gramática.i" (added to Spanish Foundation)
--==============================================================================
--------------------------------------------------------------------------------
-- * * * * * * *  S P A N I S H   G R A M M A R   F O R   A L A N  * * * * * * *
--------------------------------------------------------------------------------
--==============================================================================

-- This module handles all the grammatical aspects of the Spanish language.

--------------------------------------------------------------------------------

Add to every entity  -- 'thing' en pALANte!

  -- Defaults to masculine singular with article "el"
  Has artículo "el".
  Is not femenina.
  Is not plural.
  -- Indefinite Article "un"

  Has verb_suf "".
  Has adj_suf "".
  Has ser "". -- @NOTE: Was defined but never used anywhere!

  Initialize
  ---------------
  -- ATTRIBUTES
  ---------------
    Depending on artículo of this
      = "el" then
        Make this not plural.
        Set this:verb_suf to "".
        -- Handle feminine "el" nouns:
        If this is femenina
          then
            Set this:adj_suf to "$$a".
          else
            Set this:adj_suf to "$$o".
        end if.
      = "la" then
        Make this femenina.
        Make this not plural.
        Set this:verb_suf to "".
        Set this:adj_suf to "$$a".
      = "los" then
        Make this not femenina.
        Make this plural.
        Set this:verb_suf to "$$n".
        Set this:adj_suf to "$$os".
      = "las" then
        Make this femenina.
        Make this plural.
        Set this:verb_suf to "$$n".
        Set this:adj_suf to "$$as".
    End depend.

  --------------------
    DEFINITE ARTICLE
  --------------------
    -- @TODO: Handle entities with proper name!
    Depending on artículo of this
      = "el"   then  "el"    --> m.s / f.s
      = "la"   then  "la"    --> f.s
      = "los"  then  "los"   --> m.p
      = "las"  then  "las"   --> f.p
    End depend.

  ----------------------
    INDEFINITE ARTICLE
  ----------------------
    -- @TODO: Handle entities with proper name!
    Depending on artículo of this
      = "el"   then -- Handle feminine "el" nouns:
        If this is femenina
          then "una"         --> f.s
          else "un"          --> m.s
        end if.
      = "la"   then  "una"   --> f.s
      = "los"  then  "unos"  --> m.p
      = "las"  then  "unas"  --> f.p
    End depend.

End add to entity.

-- =============================================================================
--                            P L A Y E R   I N P U T
-- =============================================================================

-- ALAN's 'Predefined Player Words' are words that have special meaning for the
-- parser when encountered in the player input, depending on their type:

-- +--------+-----------------+--------------------------------------------+
-- |  TYPE  |      WORDS      |                 DESCRIPTION                |
-- +--------+-----------------+--------------------------------------------+
-- | ALL:   | all, everything | Special match-all parameter.               |
-- | AND:   | and, then       | To concatenate commands or parameters.     |
-- | BUT:   | but, except     | To exclude certain objects from ALL.       |
-- | THEM:  | them            | Reference to previous multiple parameters. |
-- | NOISE: | go, the         | Ignored by the parser.                     |
-- +--------+-----------------+--------------------------------------------+

-- We need to define Spanish synonyms for those special words, so that the
-- parser will recognize them as such.

-- =========
-- ALL WORDS
-- =========

Synonyms todo, todos, toda, todas = all.

-- @TODO: Are all of these synonyms of IT, or are some of these THEM words?
--        There's a difference, since IT refers only to last entity mentioned
--        in a previous command, whereas THEM words refer to multiple parameters
--        (e.g. those of ALL, or concatenated parameters via AND).

-- =========
-- AND WORDS
-- =========

Synonyms y, luego  = 'and'.

-- =========
-- BUT WORDS
-- =========

Synonyms excepto = 'but'.

-- ===========
-- NOISE WORDS
-- ===========

-- Articles are not meaningful in player input, therefore we define them as
-- synonyms of NOISE WORDS so the parser strips them away. This allows simpler
-- SYNTAX definitions, since there will be no need to create alternate syntaxes
-- for the command with and without all the possible articles.

Synonyms el, la, los, las = 'the'.


Synonyms
  eso, esos, esa, esas, ello,
  aquello, aquella, aquellos, aquellas, lo = it.


-- ==============
-- OTHER SYNOMYMS
-- ==============

Synonyms
  una, unas, uno, unos = un.

--------------------------------------------------------------------------------
--                           P R E P O S I T I O N S
--------------------------------------------------------------------------------

Synonyms
  al = a.
  del = de.

-- =============================================================================
--           O R I G I N A L   I N I T I A L I Z A T I O N   E V E N T
-- =============================================================================

-- The 'ini_terms' EVENT below was part of the original pALANte library.

-- We've replaced it with an INITIALIZE block on the 'entity' class, so there
-- won't be any need to SCHEDULE it.

-- Since one of the attributes is defined but never used, and the other two are
-- used only in a few verbs, I suspect that their implementation across the
-- library messages was never completed.

--------------------------------------------------------------------------------

-- Event that initialises object endings and words such as 'son' or 'es'.
-- Don't forget to call it in the 'START' section, using the command:
--    schedule ini_terms at limbo after 0.

-- Evento que inicializa las terminaciones de los objetos -- y palabras
-- como 'son' o 'es'.
-- No olvidar llamarlo en la sección "start", por ejemplo con el comando:
--    schedule ini_terms at limbo after 0.

////
Event ini_terms
  For each o IsA object do
    -- Initialize 'ser' (unused)
    If ser of o = "" then
      If o is plural then
        Set ser of o to "son".
      else
        Set ser of o to "es".
      End if.
    End if.
    -- Initialize 'term_n':
    -- For verbs number suffix
    -- (e.g. "está" vs "están")
    If term_n of o = "" then
      If o is plural then
        Set term_n of o to "$$n".
      End if.
    End if.
    -- Initialize 'term_s':
    -- For adjectives gender and number suffix
    -- (e.g. "abierto" vs "abierta" vs "abiertos" vs "abiertas")
    If term_s of o = "" then
      If o is femenina then
        If o is plural then
          Set term_s of o to "$$as".
        else
          Set term_s of o to "$$a".
        End if.
      else
        If o is plural then
          Set term_s of o to "$$os".
        else
          Set term_s of o to "$$o".
        End if.
      End if.
    End if.
  End for.
End event.
////

-- @NOTE 1: The attribute 'ser' is not actually used anywhere in the library!

-- @NOTE 2: The attributes 'term_n' and 'term_s' (now 'verb_suf' 'adj_suf') are
--          used in the following library verbs:
--            * 'abrir'  and 'cerrar'   ("abrir.i")
--            * 'lanzar' and 'lanzar_a' ("lanzar.i")
