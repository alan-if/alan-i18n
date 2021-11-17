# Spanish Test Suite

This folder contains the test suite to check the integrity of the **Spanish Foundation** library.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [About](#about)
- [Special Files](#special-files)
- [Special Tests](#special-tests)
    - [Meta Tests](#meta-tests)
        - [MESSAGEs Table](#messages-table)
        - [Untested MESSAGEs](#untested-messages)
- [Test Objects](#test-objects)
    - [Actors](#actors)
        - [Actors Unnamed](#actors-unnamed)
    - [Containers](#containers)
    - [Edibles](#edibles)
        - [Solid Edibles](#solid-edibles)
        - [Liquid Edibles](#liquid-edibles)
        - [Edibles Containers](#edibles-containers)
    - [Furniture](#furniture)
        - [Furniture Containers](#furniture-containers)
        - [Furniture Surfaces](#furniture-surfaces)
    - [Readables](#readables)
    - [Wearables](#wearables)
        - [Wearables Containers](#wearables-containers)
    - [Weapons](#weapons)
    - [Exception Nouns](#exception-nouns)
        - [Feminine Nouns with Article "El"](#feminine-nouns-with-article-el)
- [Reference Links](#reference-links)

<!-- /MarkdownTOC -->

-----

# About

The tests in this folder are designed to check the library integrity, both in terms of code behaviour and of linguistic correctness of Spanish messages, especially regarding proper handling of gender and number.

Each test is a single adventure (`.alan`) to which one or more solution files (`.a3s`) sharing the same base name are associated.

For more info on how library test suites work, see the _[Test Suites]_ page on the [ALAN i18n Wiki].

Since the tests need to be accessible to repository maintainers who don't speak Spanish, test files are named in English, and the comments in the adventures sources and solution files are also in English.

Providing English annotations and file names helps the [Alan IF Development team] to easily understand the context of each test, in case a bug in the ALAN language is revealed by one of these tests, or to be able to amend the library sources if changes to the ALAN language demand it, or update the Spanish library when no native Spanish speaker is available.

# Special Files

The following special test files should not be deleted or otherwise tampered with:

- `meta-session-different-adventure.sav`
- `meta-session-different-arun.sav`


# Special Tests

Most test files are intuitive enough not to require further commenting.
In the following section are some notes regarding tests that deserve some explanations.

## Meta Tests

Meta tests handle testing [Run-Time MESSAGEs] and [META VERBs], checking that their messages are translated correctly, use proper GNA references, and that META VERBs don't consume a turn.

These are probably the trickier tests in the whole test suite, because eliciting all the various Run-Time MESSAGEs is not always easy.

> **WARNING** — Don't edit the meta tests files unless strictly necessary, and provided you know what you're doing.
> Before and after editing them, ensure that all the tests are working as intended (the exact order of each test is fundamental; introducing new commands or modifying the solution files could jeopardize other tests), and that you update this README file accordingly, if required.

The following files handle meta testing:

- `meta.alan` — source adventure for all meta-tests:
    + `meta-badcode.a3s` — Tests run-time messages for malformed adventures:
        * [`meta-badcode.a3t`][meta-badcode.a3t]
    + `meta-input-errors.a3s` — Tests run-time messages for problematic input:
        * [`meta-input-errors.a3t`][meta-input-errors.a3t]
    + `meta-misc.a3s` — Tests various run-time messages that don't fall in a particular category:
        * [`meta-misc.a3t`][meta-misc.a3t]
    + `meta-player-words.a3s` — Tests [predefined player words]:
        * [`meta-player-words.a3t`][meta-player-words.a3t]
    + `meta-session.a3s` — Tests game session related verbs and run-time messages:
        * [`meta-session.a3t`][meta-session.a3t]
        * `meta-session.sav` (_untracked_) — Save file created from the solution file.
        * `meta-session-different-adventure.sav` (_tracked_) — A saved `adventV3.a3c` game session, to test the `SAVE_NAME ` run-time MESSAGE (don't delete or overwrite it!).
        * `meta-session-different-arun.sav` (_tracked_) — A `meta.a3c` game session saved using ARun Beta7, to test the `SAVE_VERSION` run-time MESSAGE (don't delete or overwrite it!).

### MESSAGEs Table

The following table lists all the [Run-Time MESSAGEs], their testing status, and in which files they are being tested (see next section for untested messages).


|       RT Message      |  status |        test file        |
|-----------------------|---------|-------------------------|
| `AFTER_BUT`           | --      | TBD                     |
| `AGAIN`               | &check; | [meta-misc.a3t]         |
| `BUT_ALL`             | --      | TBD                     |
| `CAN_NOT_CONTAIN`     | &check; | [meta-badcode.a3t]      |
| `CANT0`               | &check; | [meta-badcode.a3t]      |
| `CARRIES`             | --      | _test unneeded_         |
| `CONTAINMENT_LOOP2`   | &check; | [meta-badcode.a3t]      |
| `CONTAINMENT_LOOP`    | &check; | [meta-badcode.a3t]      |
| `CONTAINS_AND`        | --      | _test unneeded_         |
| `CONTAINS_COMMA`      | --      | _test unneeded_         |
| `CONTAINS_END`        | --      | _test unneeded_         |
| `CONTAINS`            | --      | _test unneeded_         |
| `EMPTY_HANDED`        | --      | _test unneeded_         |
| `HAVE_SCORED`         | --      | TBD                     |
| `IMPOSSIBLE_WITH`     | &check; | [meta-badcode.a3t]      |
| `IS_EMPTY`            | --      | _test unneeded_         |
| `MORE`                | --      | _unable to_             |
| `MULTIPLE`            | --      | TBD                     |
| `NO_SUCH`             | --      | TBD                     |
| `NO_UNDO`             | &check; | [meta-session.a3t]      |
| `NO_WAY`              | --      | TBD                     |
| `NOT_A_SAVEFILE`      | &check; | [meta-session.a3t]      |
| `NOT_MUCH`            | --      | TBD                     |
| `NOUN`                | --      | TBD                     |
| `QUIT_ACTION`         | &check; | [meta-session.a3t]      |
| `REALLY`              | &check; | [meta-session.a3t]      |
| `RESTORE_FROM`        | &check; | [meta-session.a3t]      |
| `SAVE_FAILED`         | &check; | [meta-session.a3t]      |
| `SAVE_MISSING`        | &check; | [meta-session.a3t]      |
| `SAVE_NAME`           | &check; | [meta-session.a3t]      |
| `SAVE_OVERWRITE`      | &cross; | [meta-session.a3t]      |
| `SAVE_VERSION`        | &check; | [meta-session.a3t]      |
| `SAVE_WHERE`          | &check; | [meta-session.a3t]      |
| `SEE_AND`             | --      | _test unneeded_         |
| `SEE_END`             | --      | _test unneeded_         |
| `SEE_START`           | --      | _test unneeded_         |
| `UNDONE`              | &check; | [meta-session.a3t]      |
| `UNKNOWN_WORD`        | &check; | [meta-input-errors.a3t] |
| `WHAT_WORD`           | --      | TBD                     |
| `WHAT`                | --      | TBD                     |
| `WHICH_COMMA`         | --      | TBD                     |
| `WHICH_OR`            | --      | TBD                     |
| `WHICH_PRONOUN_FIRST` | --      | TBD                     |
| `WHICH_PRONOUN_START` | --      | TBD                     |
| `WHICH_START`         | --      | TBD                     |


### Untested MESSAGEs

Some MESSAGEs in the above table were marked as not needing specific testing because they are omnipresent in any game description, or already covered elsewhere (e.g. listing inventories and containers).

We weren't able to test the following MESSAGEs via the automated toolchain:

- `SAVE_OVERWRITE` —
Couldn't manage to get ARun ask for confirmation before overwriting an existing save file.
It does if you play in the terminal, but for some reason it doesn't work in the automated workflow.
I thought it might be due to the filesystem cache not being flushed, but trying to overwrite a different save-file failed too (i.e. one saved from without the current session).
No idea how to fix this, yet.
- `MORE`


But these untested MESSAGEs have been checked manually.


# Test Objects

Here follows a list of nouns of different objects types which are useful for creating test adventures; for each type of object nouns with different gender and number are provided, in order to be able to test for correct GNA handling by the library.

These nouns where provided by [Ricardo Osio] to help [Tristano Ajmone], who needed them to flesh out some quick tests to ensure that gender and number are properly represented in library messages and responses for different objects types.

Objects are organized by categories, and then into further subcategories.
Each category has a table of nouns, sorted by gender and providing the singular and plural forms for each noun (if available).

Nouns that are available only in plural form are listed after the singular form of each gender.

Special uses cases are annotated via footnotes for each table.


## Actors

Various NPC actors for testing proper named (TBD) and unnamed actors.

### Actors Unnamed

| g  |  singular  |    plural   |    English     |
|----|------------|-------------|----------------|
| m. | el guardia |             | _guard_        |
| m. |            | los gemelos | _male twins_   |
| f. | la mujer   |             | _woman_        |
| f. |            | los gemelas | _female twins_ |

## Containers

Generic containers for testing putting and throwing things into them, and then removing them.

| g  | singular |    plural   | English |
|----|----------|-------------|---------|
| m. | el bidón | los bidones | _drum_  |
| f. | la caja  | las cajas   | _box_   |


## Edibles

### Solid Edibles

| g  |        singular       |       plural      |   English   |
|----|-----------------------|-------------------|-------------|
| m. | el arroz              |                   | _rice_      |
| m. | el azúcar<sup>1</sup> |                   | _sugar_     |
| m. | el durazno (_peach_)  | los duraznos      |             |
| m. | el pan (_bread_)      | los panes         |             |
| m. |                       | los huevos        | _eggs_      |
| m. |                       | los mangos        | _mangoes_   |
| f. | la carne              |                   | _meat_      |
| f. | la jalea              |                   | _jelly_     |
| f. | la mantequilla        |                   | _butter_    |
| f. | la piña               | las piñas         | _pineapple_ |
| f. | la torta/tarta        | las tortas/tartas | _cake_      |
| f. |                       | las manzanas      | _apples_    |
| f. |                       | las pasas         | _raisings_  |


**NOTES:**

1. Particular case: _azúcar_ can be used with a masculine or feminine article, but its adjectives are always feminine.


### Liquid Edibles

| g  |       singular      |     plural    |   English    |
|----|---------------------|---------------|--------------|
| m. | el agua<sup>1</sup> |               | _water_      |
| m. | el café             |               | _coffee_     |
| m. | el jugo             |               | _juice_      |
| m. | el ron              |               | _rum_        |
| m. | el té               |               | _tea_        |
| m. | el vino             |               | _wine_       |
| f. | la cerveza          | las cervezas  | _beer_       |
| f. | la gaseosa          | las gaseosas  | _soda_       |
| f. | la limonada         |               | _lemonade_   |
| f. | la malteada         | las malteadas | _milk shake_ |
| f. | la sidra            |               | _cider_      |


**NOTES:**

1. Particular case: _agua_ uses a masculine article but its gender is feminine, so it's here because of the article but technically it's feminine.



### Edibles Containers

| g  |  singular  |    plural   | English  |
|----|------------|-------------|----------|
| m. | el frasco  | los frascos | _jar_    |
| m. | el tazón   |             | _bowl_   |
| f. | la botella |             | _bottle_ |
| f. | la canasta |             | _basket_ |
| f. | la jarra   | las jarras  | _jug_    |
| f. | la lata    | las latas   | _can_    |
| f. | la taza    | las tazas   | _cup_    |

## Furniture

### Furniture Containers

| g  | singular |    plural   | English  |
|----|----------|-------------|----------|
| m. | el cajón | los cajones | _drawer_ |


### Furniture Surfaces

| g  |        singular       |          plural         |            English             |
|----|-----------------------|-------------------------|--------------------------------|
| m. | el escritorio         | los escritorios         | _desk_                         |
| m. | el estante            | los estantes            | _shelf_                        |
| m. | el mostrador          | los mostradores         | _counter_                      |
| m. | el piso/suelo         |                         | _floor_                        |
| f. | la encimera de cocina | las encimeras de cocina | _kitchen counter_              |
| f. | la mesa               | las mesas               | _table_                        |
| f. | la mesita de noche    | las mesitas de noche    | _bedside table_, _night table_ |


## Readables


| g  |   singular   |     plural    |    English    |
|----|--------------|---------------|---------------|
| m. | el cuaderno  |               | _notebook_    |
| m. | el diario    |               | _diary_       |
| m. | el libro     | los libros    | _book_        |
| m. | el periódico |               | _newspaper_   |
| m. |              | los artículos | _articles_    |
| m. |              | los informes  | _reports_     |
| f. | la carta     | las cartas    | _letter_      |
| f. | la cartelera |               | _billboard_   |
| f. | la hoja      | las hojas     | _paper sheet_ |
| f. | la libreta   |               | _notebook_    |
| f. | la nota      | las notas     | _note_        |


## Wearables

For testing wearables items (clothing or otherwise).

| g  |   singular  |     plural     |  English   |
|----|-------------|----------------|------------|
| m. | el pantalón | los pantalones | _pants_    |
| m. | el sombrero |                | _hat_      |
| m. |             | los aretes     | _earrings_ |
| m. |             | los zapatos    | _shoes_    |
| f. | la blusa    |                | _blouse_   |
| f. | la chaqueta |                | _jacket_   |
| f. |             | las botas      | _boots_    |

### Wearables Containers

| g  |   singular   |    plural    |       English       |
|----|--------------|--------------|---------------------|
| m. | el bolso     | los bolsos   | _bag_               |
| f. | la billetera |              | _wallet_            |
| f. | la cartera   | las carteras | _purse_ or _wallet_ |
| f. | la mochila   |              | _backpack_          |


## Weapons

| g  |   singular  |     plural    |  English   |
|----|-------------|---------------|------------|
| m. | el arco     |               | _bow_      |
| m. | el cuchillo | los cuchillos | _knife_    |
| m. | el escudo   | los escudos   | _shield_   |
| m. | el rifle    |               | _rifle_    |
| m. |             | los misiles   | _missiles_ |
| f. | la daga     |               | _dagger_   |
| f. | la escopeta |               | _shotgun_  |
| f. | la espada   | las espadas   | _sword_    |
| f. | la lanza    |               | _spear_    |
| f. | la pistola  |               | _handgun_  |
| f. |             | las cuchillas | _blades_   |
| f. |             | las flechas   | _arrows_   |
| f. |             | las granadas  | _grenades_ |
| f. |             | las minas     | _mines_    |


## Exception Nouns

Here are some nouns representing exceptions to the rule, which are important for testing that the library is capable of handling them correctly.

### Feminine Nouns with Article "El"

All these nouns and their adjectives are feminine.
E.g. _el agua turbia_, _el hacha pesada_.

| noun f.s. |   English   |            adventure object type            |
|-----------|-------------|---------------------------------------------|
| agua      | _water_     | `object` &rarr; `Is bebible`                |
| águila    | _eagle_     | `actor` &rarr; animal                       |
| alba      | _Sunrise_   | `escenario`                                 |
| álgebra   | _algebra_   | `entity` (abstract)                         |
| alma      | _soul_      | `entity` (abstract)                         |
| ancla     | _anchor_    | `object`                                    |
| arca      | _ark_       | `object`                                    |
| área      | _area_      | `location`                                  |
| arma      | _gun_       | `object` &rarr; `Is arma. Is dispararable`  |
| arpa      | _harp_      | `object`                                    |
| asta      | _flagpole_  | `object`                                    |
| aula      | _classroom_ | `location`                                  |
| ave       | _bird_      | `actor` &rarr; animal                       |
| hacha     | _axe_       | `object` &rarr; `Is arma. Not dispararable` |
| hada      | _fairy_     | `actor` &rarr; `hembra`                     |
| hambre    | _hunger_    | `entity` (abstract)                         |
| asma      | _asthma_    | `entity` (abstract)                         |

- Indefinite articles can be written both in feminine or masculine, but the latter is more common.
E.g. _un águila_ and _una águila_ are both correct.
- This DOES NOT apply to plural forms, in this case the article is feminine.
E.g. _las aguas_, _las armas_, _las hachas_.
- If an adjective or other words are placed between the noun and the article, the article is feminine.
E.g.
    + la pesada hacha (_the heavy ax_)
    + la pequeña hada (_the little fairy_)
    + la negra agua (_the black water_)

Some practical examples for testing purposes, where such feminine nous are _followed_ by an adjective, thus requiring the "el" article

| noun f.s. |   art.  |   adj. after  |     English     |
|-----------|---------|---------------|-----------------|
| agua      | el / un | agua helada   | _the icy water_ |
| hacha     | el / un | hacha afilada | _the sharp axe_ |


Some practical examples where such feminine nous are _preceded_ by an adjective, thus requiring the "la" article:

| noun f.s. |   art.   | adj. before  |      English       |
|-----------|----------|--------------|--------------------|
| agua      | la / una | negra agua   | _the black water_  |
| arpa      | la / una | gran arpa    | _the big harp_     |
| hacha     | la / una | pesada hacha | _the heavy ax_     |
| hada      | la / una | pequeña hada | _the little fairy_ |

For more info, see:

- [Spanish words that start with stressed A and HA]
- [Diccionario panhispánico de dudas » el]
- [The Enigmatic Morphology of Spanish _azúcar_ and the "New Feminine _el_"]
- [Example list of feminine words that take article "el" not "la"]


-------------------------------------------------------------------------------

# Reference Links

- [ALAN i18n Wiki]:
    + [Test Suites]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- grammar links -->

[Spanish words that start with stressed A and HA]: https://www.spanishschoolvalencia.com/spanish-words-that-start-with-stressed-a-and-ha/
[Diccionario panhispánico de dudas » el]: https://www.rae.es/dpd/el
[The Enigmatic Morphology of Spanish _azúcar_ and the "New Feminine _el_"]: https://www.degruyter.com/document/doi/10.1515/ibero-2014-0027/html
[Example list of feminine words that take article "el" not "la"]: https://spanish.kwiziq.com/learn/theme/748708

<!-- Wiki -->

[ALAN i18n Wiki]: https://github.com/alan-if/alan-i18n/wiki/
[Test Suites]: https://github.com/alan-if/alan-i18n/wiki/Test-Suites
[Predefined Player Words]: https://github.com/alan-if/alan-i18n/wiki/Predefined-Player-Words

<!-- ALAN Manual -->

[META VERBs]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#_meta_verbs "See ALAN Manual » META VERBs"
[Run-Time MESSAGEs]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#_run_time_messages "See ALAN Manual » App. C: Run-Time Messages"

<!-- project files -->

[meta-badcode.a3t]: ./meta-badcode.a3t "View test transcript"
[meta-input-errors.a3t]: ./meta-input-errors.a3t "View test transcript"
[meta-misc.a3t]: ./meta-misc.a3t "View test transcript"
[meta-session.a3t]: ./meta-session.a3t "View test transcript"
[meta-player-words.a3t]: ./meta-player-words.a3t "View test transcript"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Ricardo Osio]: https://github.com/Rich15 "View Ricardo Osio's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
