-- std.i (Swedish)
-- Library version 0.6.2

-- All verb definitions have a small, simple default body. To make
-- them do other things use DOES ONLY in your specialised verb body.

-- player character, etc.
Import 'hjälte.i'.
Import 'global.i'.

-- People, male/female etc.
Import 'människor.i'.

-- Standard verbs
Import 'titta.i'.
Import 'tag.i'.    -- + pick up, drop, put down.
Import 'öppna.i'.    -- + close.
Import 'lås.i'.    -- + unlock.
Import 'ät.i'.     -- + drink.
Import 'kasta.i'.
Import 'tryck.i'.
Import 'berör.i'.
Import 'undersök.i'. -- + look at, search
Import 'läs.i'.
Import 'placera.i'.     -- + put near,behind,on,under
Import 'ge.i'.
Import 'tala.i'.    -- + ask, tell, say, shout,
Import 'attackera.i'.  -- + skjut
Import 'kyss.i'.
Import 'vrid.i'.    -- + switch
Import 'lyssna.i'.
Import 'lukta.i'.
Import 'slå.i'.
Import 'hoppa.i'.
Import 'ta_på.i'.    -- + remove, undress, put on

Import 'hjälp.i'.    -- + notes, hint


-- Scenery
Import 'sceneri.i'.

-- Inventory verb and inventory limits (including clothing items)
Import 'invent.i'.


-- The limbo location and directions
-- Defines directions as full words, and short directions as synonyms to these.
-- So remember to use the full words in your exits or you will have E 333's
-- (e.g. 'e' defined both as a synonym and another word class)
Import 'ingenstans.i'.


-- Verbose and brief mode
Import 'kortfattad.i'.


-- Score, save, restore etc.
Import 'meta.i'.
