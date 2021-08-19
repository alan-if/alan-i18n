# INDEX de la libreria ALAN Foundation española

Version 0.1.0 (2021/07/24).

-----

**El Índice de Contenidos (Orden alfabético)**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [HEROE](#heroe)
- [LOCATION](#location)
- [OBJECT](#object)
- [ATRIBUTOS POR DEFECTO \(THING\)](#atributos-por-defecto-thing)
- [ATRIBUTOS DE OBJETO](#atributos-de-objeto)
- [ATRIBUTOS DE ACTOR](#atributos-de-actor)
- [DIRECCIONES](#direcciones)
- [SINÓNIMOS](#sin%C3%93nimos)
- [SINTAXIS](#sintaxis)

<!-- /MarkdownTOC -->

-----


# HEROE

|          HERO          |  Library File  |
|------------------------|----------------|
| `hero`                 | [heroe.i]      |
| `llevado` (contenedor) | [inventario.i] |


# LOCATION

| LOCATION |           |
|----------|-----------|
| `limbo`  | [limbo.i] |

# OBJECT

|                                    OBJECT                                    |  Library File |
|------------------------------------------------------------------------------|---------------|
| `escenario` (`not tomable`, `not tocable`, `not empujable` y `not buscable`) | [escenario.i] |


# ATRIBUTOS POR DEFECTO (THING)

|  THING ATTRIBUTES  |  Library File  |
|--------------------|----------------|
| `buscable`         | [examinar.i]   |
| `empujable`        | [empujar.i]    |
| `examinable`       | [examinar.i]   |
| `inanimado`        | [tomar.i]      |
| `tocable`          | [tocar.i]      |
| `Not dispararable` | [atacar.i]     |
| `Not femenina`     | [atributos.i]  |
| `Not habla`        | [hablar.i]     |
| `Not plural`       | [atributos.i]  |
| `peso 0`           | [inventario.i] |



# ATRIBUTOS DE OBJETO

| OBJECT ATTRIBUTES  |  Library File  |
|--------------------|----------------|
| `Not abierto`      | [abrir.i]      |
| `Not abrible`      | [abrir.i]      |
| `Not arma`         | [atacar.i]     |
| `Not bebible`      | [comer.i]      |
| `Not cerrable`     | [abrir.i]      |
| `Not cerrojable`   | [abrir.i]      |
| `cerrojo`          | [abrir.i]      |
| `Not comestible`   | [comer.i]      |
| `Not conmutable`   | [encender.i]   |
| `Not dispararable` | [atacar.i]     |
| `Not encendido`    | [encender.i]   |
| `Not leible`       | [leer.i]       |
| `Not llevable`     | [llevar.i]     |
| `tomable`          | [tomar.i]      |
| `peso 5`           | [inventario.i] |


# ATRIBUTOS DE ACTOR

| ACTOR ATTRIBUTES |  Library File  |
|------------------|----------------|
| `Not buscable`   | [examinar.i]   |
| `habla`          | [hablar.i]     |
| `Not inanimado`  | [tomar.i]      |
| `Not named`      | [persona.i]    |
| `count 10`       | [inventario.i] |
| `peso 50`        | [inventario.i] |



# DIRECCIONES

| DIRECCIONES |               SYNONYMS              |
|-------------|-------------------------------------|
| `este`      | `e`                                 |
| `oeste`     | `o`, `w`                            |
| `norte`     | `n`                                 |
| `sur`       | `s`                                 |
| `noroeste`  | `'no'`, `nw`                        |
| `noreste`   | `ne`                                |
| `suroeste`  | `sw`, `so`                          |
| `sureste`   | `se`                                |
| `arriba`    | `u`, `upa`, `subo`, `subi`, `subir` |
| `abajo`     | `d`, `bajo`, `baja`, `bajar`        |
| `go`        | `ir`                                |


# SINÓNIMOS

|                                          SYNONYMS                                          |  Library File  |
|--------------------------------------------------------------------------------------------|----------------|
| `abrir = abre, abri, abro`                                                                 | [abrir.i]      |
| `acerca = sobre`                                                                           | [hablar.i]     |
| `again = g, repetir, repite, repito`                                                       | [meta.i]       |
| `all = toda, todas, todo, todos`                                                           | [atributos.i]  |
| `apagar = apago, apaga, extingo, extingue, extinguir, sofoca, sofocar, sofoco`             | [encender.i]   |
| `atacar = ataca, ataco, lucha, luchar, lucho, mata, matar, mato`                           | [atacar.i]     |
| `atacar = golpea, golpear, golpeo, patea, patear, pateo`                                   | [atacar.i]     |
| `ayuda = h, help`                                                                          | [ayuda.i]      |
| `beber = bebe, bebo`                                                                       | [comer.i]      |
| `besar = besa, beso, besuca, besucar, besuco, besuquea , besuquear, besuqueo`              | [besar.i]      |
| `brief = breve, superbreve`                                                                | [brief.i]      |
| `cerrar = cerra, cierra, cierro`                                                           | [abrir.i]      |
| `comer = come, como, consume, consumo, consumir, papeo, papea, papear`                     | [comer.i]      |
| `comer = devora, devorar, devoro, engullo, engulle, engullir`                              | [comer.i]      |
| `comer = trago, traga, tragar, zampo, zampa, zampar`                                       | [comer.i]      |
| `creditos = autor, créditos, info, informacion, información, notas`                        | [ayuda.i]      |
| `dar = da, dona, donar, dono, doy, entrego, entrega, entregar`                             | [dar.i]        |
| `decir = di, digo, dile`                                                                   | [dar.i]        |
| `dejar = deja, dejo, descarto, descarta, descartar, suelto, suelta, soltar`                | [tomar.i]      |
| `desnudar = desnudo, desnuda, desnudarme, desnudate, desnudarse`                           | [llevar.i]     |
| `el = él, esa, esas, eso, esos, la, las, los`                                              | [atributos.i]  |
| `empujar = empuja, empujo`                                                                 | [empujar.i]    |
| `encender = enciendo, enciende, encende, inicio, inicia, iniciar, prendo, prende, prender` | [encender.i]   |
| `examinar = x, ex, examina, examino, estudio, estudia, estudiar`                           | [examinar.i]   |
| `gritar = grita, grito, chilla, chillo, chillar, vocifera, vocifero, vociferar`            | [hablar.i]     |
| `gritar = brama, bramo, bramar`                                                            | [hablar.i]     |
| `hablar = habla, hablo, charla, charlo, charlar`                                           | [hablar.i]     |
| `hero = heroe, héroe, me, mi, yo`                                                          | [heroe.i]      |
| `invent = i, inventario, inv`                                                              | [inventario.i] |
| `lanzar = lanzo, lanza, tiro, tira, tirar`                                                 | [lanzar.i]     |
| `leer = leo, lee`                                                                          | [leer.i]       |
| `llamar = llamo, llama`                                                                    | [llamar.i]     |
| `llevar = lleva, llevo, ponerme, ponerse, ponte`                                           | [llevar.i]     |
| `mirar = veo, ve, ver, m, l, 'look`'                                                       | [examinar.i]   |
| `it = aquella, aquellas, aquello, eso, esos, esa, esas, lo`                                | [atributos.i]  |
| `oler = huele, huelo, olisqueo, olisquea, olisquear, olfateo, olfatea, olfatear`           | [oler.i]       |
| `pistas = hint, hints, pista`                                                              | [ayuda.i]      |
| `poner = meto, mete, meter, pongo, pone, pon, inserto, inserta, insertar`                  | [poner.i]      |
| `preguntar = pregunto, pregunta, preguntale`                                               | [hablar.i]     |
| `'quit' = abandono, abandona, abandonar, q`                                                | [meta.i]       |
| `quitar = quita, quito, quitarme, quitarse, quitate`                                       | [llevar.i]     |
| `'restart' = comenzar, comienzo, comienza, recomenzar`                                     | [meta.i]       |
| `'restore' = restaurar, restaura, recuperar, recupera`                                     | [meta.i]       |
| `saltar = salta, salto`                                                                    | [saltar.i]     |
| `'save' = grabar, graba, salvar, salva`                                                    | [meta.i]       |
| `'score' = puntos, puntaje, puntuacion, puntuación`                                        | [meta.i]       |
| `tocar = toco, toca, palpo, palpa, palpar, acaricio, acaricia, acariciar`                  | [tocar.i]      |
| `tocar = sobo, soba, sobar, manoseo, manosea, manosear`                                    | [tocar.i]      |
| `tomar = toma, tomo, agarro, agarra, agarrar, cojo, coge, coger`                           | [tomar.i]      |
| `tomar = recojo, recoge, recoger`                                                          | [tomar.i]      |
| `verbose = largo`                                                                          | [brief.i]      |
| `'wait' = z, espera, esperar, espero`                                                      | [meta.i]       |



# SINTAXIS

|                     SYNTAX                    |  Library File  |
|-----------------------------------------------|----------------|
| `abrir = abrir (obj)`                         | [abrir.i]      |
| `abrir_con = abrir (obj) con (key)`           | [abrir.i]      |
| `again = again `                              | [meta.i]       |
| `apagar = apagar (obj)`                       | [encender.i]   |
| `atacar = atacar (act)`                       | [atacar.i]     |
| `atacar_con = atacar (act) 'con' (obj)`       | [atacar.i]     |
| `ayuda = ayuda `                              | [ayuda.i]      |
| `beber = beber (obj)`                         | [comer.i]      |
| `besar = besar (obj)`                         | [besar.i]      |
| `brief = brief `                              | [brief.i]      |
| `buscar = buscar (obj)`                       | [examinar.i]   |
| `cerrar = cerrar (obj)`                       | [abrir.i]      |
| `cerrar_con = cerrar (obj) con (key)`         | [abrir.i]      |
| `comer = comer (obj)`                         | [comer.i]      |
| `creditos = creditos `                        | [ayuda.i]      |
| `dar = dar (obj) 'a' (recip)`                 | [dar.i]        |
| `decir = decir (tema) ! `                     | [hablar.i]     |
| `decir_a = decir (tema)! a (act)`             | [hablar.i]     |
| `dejar = dejar (obj) *. `                     | [tomar.i]      |
| `desnudar = desnudar `                        | [llevar.i]     |
| `disparar = disparar (obj)`                   | [atacar.i]     |
| `disparar_a = disparar (obj) 'a' (act)`       | [atacar.i]     |
| `disparar_con = disparar (act) 'con' (obj)`   | [atacar.i]     |
| `empujar = empujar (obj)`                     | [empujar.i]    |
| `empujar_con = empujar (obj1) con (obj2)`     | [empujar.i]    |
| `encender = encender (obj)`                   | [encender.i]   |
| `escuchar = escuchar `                        | [escuchar.i]   |
| `escuchar_el = escuchar (obj)`                | [escuchar.i]   |
| `examinar = examinar (obj) * `                | [examinar.i]   |
| `gritar = gritar `                            | [hablar.i]     |
| `hablar_con = hablar con (act) sobre (tema)`! | [hablar.i]     |
| `hablar_con_act = hablar con (act)`           | [hablar.i]     |
| `invent = invent `                            | [inventario.i] |
| `lanzar = lanzar (obj) * `                    | [lanzar.i]     |
| `lanzar_a = lanzar (obj1) a (obj2)`           | [lanzar.i]     |
| `lanzar_en = lanzar (obj1) en (obj2)`         | [lanzar.i]     |
| `leer = leer (obj)`                           | [leer.i]       |
| `llamar = llamar `                            | [llamar.i]     |
| `llamar_a = llamar a (obj)`                   | [llamar.i]     |
| `llevar = llevar (obj)`                       | [llevar.i]     |
| `mirar = mirar `                              | [examinar.i]   |
| `mirar_en = mirar 'en' (obj)`                 | [examinar.i]   |
| `oler0 = oler `                               | [oler.i]       |
| `oler = oler (obj)`                           | [oler.i]       |
| `pistas = pistas `                            | [ayuda.i]      |
| `poner = poner (obj) * `                      | [poner.i]      |
| `poner_bajo = poner (obj1) debajo (obj2)`     | [poner.i]      |
| `poner_cerca = poner (obj1) cerca (obj2)`     | [poner.i]      |
| `poner_detras = poner (obj1) detras (obj2)`   | [poner.i]      |
| `poner_en = poner (obj1) en (obj2)`           | [poner.i]      |
| `poner_sobre = poner (obj1) sobre (obj2)`     | [poner.i]      |
| `preguntar = preguntar (act) por (tema)`!     | [hablar.i]     |
| `'quit' = 'quit'`                             | [meta.i]       |
| `quitar = quitar (obj)`                       | [quitar.i]     |
| `'restart' = 'restart'`                       | [meta.i]       |
| `'restore' = 'restore'`                       | [meta.i]       |
| `saltar = saltar `                            | [saltar.i]     |
| `saltar_en = saltar en (obj)`                 | [saltar.i]     |
| `'save' = 'save'`                             | [meta.i]       |
| `'score' = 'score'`                           | [meta.i]       |
| `tocar = tocar (obj)`                         | [tocar.i]      |
| `tocar_con = tocar (obj1) con (obj2)`         | [tocar.i]      |
| `tomar = tomar (obj) * `                      | [tomar.i]      |
| `tomar_de = 'tomar' (obj) 'de' (cont)`        | [tomar.i]      |
| `verbose = verbose `                          | [brief.i]      |
| `'wait' = 'wait'`                             | [meta.i]       |

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- Lib modules -->

[abrir.i]: ./abrir.i "View source file"
[atacar.i]: ./atacar.i "View source file"
[atributos.i]: ./atributos.i "View source file"
[ayuda.i]: ./ayuda.i "View source file"
[besar.i]: ./besar.i "View source file"
[brief.i]: ./brief.i "View source file"
[comer.i]: ./comer.i "View source file"
[dar.i]: ./dar.i "View source file"
[direcciones.i]: ./direcciones.i "View source file"
[empujar.i]: ./empujar.i "View source file"
[encender.i]: ./encender.i "View source file"
[escenario.i]: ./escenario.i "View source file"
[escuchar.i]: ./escuchar.i "View source file"
[examinar.i]: ./examinar.i "View source file"
[hablar.i]: ./hablar.i "View source file"
[heroe.i]: ./heroe.i "View source file"
[inventario.i]: ./inventario.i "View source file"
[lanzar.i]: ./lanzar.i "View source file"
[leer.i]: ./leer.i "View source file"
[limbo.i]: ./limbo.i "View source file"
[llamar.i]: ./llamar.i "View source file"
[llevar.i]: ./llevar.i "View source file"
[mensajes.i]: ./mensajes.i "View source file"
[meta.i]: ./meta.i "View source file"
[oler.i]: ./oler.i "View source file"
[persona.i]: ./persona.i "View source file"
[poner.i]: ./poner.i "View source file"
[saltar.i]: ./saltar.i "View source file"
[Library.i]: ./Library.i "View source file"
[tocar.i]: ./tocar.i "View source file"
[tomar.i]: ./tomar.i "View source file"

<!-- EOF -->
