﻿--==============================================================================
--------------------------------------------------------------------------------
-- * *  ALAN Foundation Library Spanish  * * v0.5.0 | 2022/01/19 | ALAN 3.0Beta8
--------------------------------------------------------------------------------
--==============================================================================

-- Basada en la librería española pALANte v0.6.1e, por Bruce Humphrey.
-- Basada en la librería inglesa versión 0.6.1dev y la librería palante 0.1 de
-- Marcos Donnantuoni.

Import 'gramática.i'.         -- Core Spanish grammar module
Import 'mensajes_libreria.i'. -- Mensajes de la libreria
Import 'mensajes_runtime.i'.  -- Mensajes del sistema traducidos al castellano
Import 'temp.i'.              -- Temporary variables

Import 'direcciones.i'. -- Para movernos
Import 'limbo.i'.       -- Para poner objetos sin lugar de inicio
Import 'persona.i'.     -- clase persona, macho, hembra

-- Meta Verbs:

Import 'meta_ayuda.i'.  -- Ayuda, pistas, autor.
Import 'meta_brief.i'.  -- Modos breve y extendido (verbose)
Import 'meta_sesión.i'. -- Metacomandos: salvar, cargar, etc

-- Game Verbs:

Import 'abrir.i'.       -- abrir, cerrar, abrir con, cerrar con
Import 'atacar.i'.      -- Atacar, disparar
Import 'atributos.i'.   -- Unos cuantos atributos generales
Import 'besar.i'.       -- Besar.
Import 'comer.i'.       -- Comer, Beber
Import 'dar.i'.         -- Dar
Import 'empujar.i'.     -- empujar, empujar_con
Import 'encender.i'.    -- Encender y Apagar.
Import 'escuchar.i'.    -- escuchar
Import 'espera.i'.      -- Espera, esperar, espero y wait
Import 'examinar.i'.    -- Para examinar, buscar objetos, mirar y mirar (obj)
Import 'hablar.i'.      -- Hablar, decir, preguntar
Import 'heroe.i'.       -- El personaje principal
Import 'inventario.i'.  -- Inventario, atributos de inventario
Import 'lanzar.i'.      -- Lanzar, lanzar_a
Import 'leer.i'.        -- Leer
Import 'llamar.i'.      -- Llamar a puerta
Import 'llevar.i'.      -- llevar, ponerse objetos
Import 'oler.i'.        -- Oler
Import 'poner.i'.       -- poner, poner_en, poner_bajo, poner_sobre...
Import 'saltar.i'.      -- Saltar
Import 'tocar.i'.       -- Tocar
Import 'tomar.i'.       -- Tomar, Dejar, Tomar_de
