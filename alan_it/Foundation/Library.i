--==============================================================================
--------------------------------------------------------------------------------
-- * *  ALAN Foundation Library Italian  * *  v0.1.1 | 2021/12/02 | ALAN 3.Beta8
--------------------------------------------------------------------------------
--==============================================================================

-- Moduli creati appositamente per l'italiano.
Import 'grammatica.i'.
Import 'messaggi_runtime.i'.


-- All verb definitions have a small, simple default body. To make
-- them do other things use DOES ONLY in your specialised verb body.

-- player character, etc.
Import 'eroe.i'.               --> 'hero.i'
Import 'globali.i'.            --> 'global.i'
Import 'temp.i'.               --> 'temp.i' -- temporary variables

-- People, male/female etc.
Import 'persone.i'.            --> 'people.i'

-- Standard verbs
Import 'accendere.i'.          --> 'turn.i' + switch
Import 'aggredire.i'.          --> 'attack.i' + shoot
Import 'annusare.i'.           --> 'smell.i'
Import 'aprire.i'.             --> 'open.i' + close.
Import 'ascoltare.i'.          --> 'listen.i'
Import 'aspettare.i'.          --> 'meta.i' (wait)
Import 'baciare.i'.            --> 'kiss.i'
Import 'bloccare.i'.           --> 'lock.i' + unlock.
Import 'bussare.i'.            --> 'knock.i'
Import 'dare.i'.               --> 'give.i'
Import 'esaminare.i'.          --> 'examine.i' + look at, search
Import 'guardare.i'.           --> 'look.i'
Import 'indossare.i'.          --> 'wear.i' + remove, undress, put on
Import 'lanciare.i'.           --> 'throw.i'
Import 'leggere.i'.            --> 'read.i'
Import 'mangiare.i'. -- + bere --> 'eat.i'  -- + drink.
Import 'mettere.i'.            --> 'put.i' + put near,behind,on,under
Import 'parlare.i'.            --> 'talk.i' + ask, tell, say, shout
Import 'prendere.i'.           --> 'take.i' + pick up, drop, put down.
Import 'saltare.i'.            --> 'jump.i'
Import 'spingere.i'.           --> 'push.i'
Import 'toccare.i'.            --> 'touch.i'

-- Scenery
Import 'scenario.i'.           --> 'scenery.i'

-- Inventory verb and inventory limits (including clothing items)
Import 'inventario.i'.         --> 'invent.i'


-- LIMBO E DIREZIONI
-- =================
-- Definisce le varie direzioni e le loro abbreviazioni (sinonimi) e il "libmo",
-- un luogo fittizio in cui parcheggiare le entità che si vogliono far sparire
-- di scena.

Import 'limbo.i'.              --> 'nowhere.i'




-- META VERBI
-- ==========
-- Verbi extradiegetici che non consumano un turno.
Import 'meta_aiuto.i'.         --> 'help.i' + notes, hint
Import 'meta_partita.i'.       --> 'meta.i'
Import 'meta_punteggio.i'.     --> 'meta.i'
Import 'meta_verbosità.i'.     --> 'brief.i'
