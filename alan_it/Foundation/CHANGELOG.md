# Italian Foundation Library ChangeLog

This is the ChangeLog for the __ALAN Foundation Library__, Italian version.

To learn more about the library version scheme, see the [`VERSIONING.adoc`][VERSIONING.adoc] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Pending Integrations](#pending-integrations)
- [Beta Releases](#beta-releases)
    - [v0.4.1 \(2023/06/18\)](#v041-20230618)
        - [Rename Short Directions](#rename-short-directions)
        - [Drop Directions `in` and `fuori`](#drop-directions-in-and-fuori)
    - [v0.4.0 \(2022/01/31\)](#v040-20220131)
        - [Rename Scenario to Ornamentale](#rename-scenario-to-ornamentale)
    - [v0.3.0 \(2022/01/07\)](#v030-20220107)
        - [New `messaggi_libreria.i` Module](#new-messaggi_libreriai-module)
        - [Scenery Class Becomes an Attribute](#scenery-class-becomes-an-attribute)
    - [v0.2.0 \(2021/12/03\)](#v020-20211203)
        - [Complete Library Translation](#complete-library-translation)
    - [v0.1.1 \(2021/12/02\)](#v011-20211202)
        - [Add Transcript Verbs](#add-transcript-verbs)
        - [Translate Score Verb](#translate-score-verb)
        - [Translate Game Session META VERBs](#translate-game-session-meta-verbs)
    - [v0.1.0 \(2021/11/26\)](#v010-20211126)

<!-- /MarkdownTOC -->

-----

# Pending Integrations

A list of features and changes that need to be replayed on the Italian Foundation, based on releases from either from the **English Foundation** (the reference library) or the **Spanish Foundation**, for changes that only apply to the Spanish and Italian languages, which are similar.

- _none_.

-------------------------------------------------------------------------------

# Beta Releases

The __Italian Foundation Library__ is currently maintained by [Tristano Ajmone].


## v0.4.1 (2023/06/18)

### Rename Short Directions

Implement better synonyms for short directions (exits) names in `limbo.i`:

| short |    long   |
|-------|-----------|
| nn    | nord      |
| ss    | sud       |
| ee    | est       |
| oo    | ovest     |
| nne   | nordest   |
| sse   | sudest    |
| sso   | sudovest  |
| nno   | nordovest |

The new naming convention is more intuitive and easier to remember, since it just doubles the first letter of the classic short names used historically in Italian IF.
There is no risk that the new synonyms might conflict with custom verbs syntaxes, objects names or other game identifiers, since Italian words _never_ start with a double letter (consonant or vowel).

### Drop Directions `in` and `fuori`

Removed directions `'in'` and `fuori` (for entering and exiting) since these might cause conflicts (both are prepositions, the latter also an adverb), and are probably better implemented as verbs.

In any case, similar choices are better left to the end user of the library because, depending on the adventure type, different possible solutions are available to implement these directions that have the form of prepositions, adverbs, or verbs — and often one solution prevents the others.



## v0.4.0 (2022/01/31)

### Rename Scenario to Ornamentale

> Apply to Italian library equivalent changes to English Foundation v0.4.0.

Rename the `scenario` attribute to `ornamentale` since it's more indicative of the actual attribute nature and because the terms lends itself to better translations in other locales (see [Discussion #57]).

Library messages starting in `scenario_` are also renamed to `ornamentale_`.



## v0.3.0 (2022/01/07)

### New `messaggi_libreria.i` Module

> Apply to Italian library equivalent changes to English Foundation v0.2.5.

Added a new `messaggi_libreria.i` module defining an hidden `msg` location on which recurrent library messages are defined as string attributes.
This allows:

- Editing recurrent messages in a single source file.
- Changing the default messages from within an adventure, even during play, instead of editing the library sources.
- Optimizing compiled games size by reducing string redundancy.

The following attributes were defined covering standard responses for scenery, violence and missing objects:

|          attribute          |                       value                       |
|-----------------------------|---------------------------------------------------|
| `msg:non_possiedi_P1`       | `"Non possiedi $+1!"`                             |
| `msg:non_possiedi_P2`       | `"Non possiedi $+2!"`                             |
| `msg:scenario_P1_pl`        | `"$+1 non sono importanti ai fini del gioco."`    |
| `msg:scenario_P1_sg`        | `"$+1 non è importante ai fini del gioco."`       |
| `msg:scenario_P2_pl`        | `"$+2 non sono importanti ai fini del gioco."`    |
| `msg:scenario_P2_sg`        | `"$+2 non è importante ai fini del gioco."`       |
| `msg:violenza_non_risposta` | `"La violenza non è la giusta risposta a questo"` |

- All verbs and syntaxes using those standard responses where adapted accordingly.

In the future, more message attributes will be added for recurring messages, trying to adopt flexible messages template which work well with different `VERB`, `WHERE` and `CHECK` responses.

> **NOTE** — For more info on library messages, see the
[_Foundation Library Design_](../../alan_en/docs/foundation.html#library_messages) documentation.


### Scenery Class Becomes an Attribute

> Apply to Italian library equivalent changes to English Foundation v0.3.0.

Drop the `scenario` class in favour of a `scenario` attribute added to every `entity`:

- `globali.i`:
    + Add `Is not scenario` to every `entity`.
    + Delete addition of `plurale` attribute on every `thing` since it's already defined on `entity` in `grammatica.i`.
- `scenario.i` — module deleted.
- `Library.i` — delete `Import 'scenario.i` directive.
- `esaminare.i` — tweak verb `esaminare` to show default scenery responses if the instance `is scenario` and has an empty `xDesc` string attribute.

In all verbs taking parameters, add CHECKs to prevent the action when a parameter is `scenario`, with the following exceptions:

- Verb `esaminare` is allowed, a non-empty `xDesc` will be honoured.
- Actor parameters have no `scenario` CHECKs, since actors shouldn't be scenery.
- In conversation verbs, `argomento` (topic) parameters can be `scenario`.


## v0.2.0 (2021/12/03)

### Complete Library Translation

Finish translating verb responses that were still in English, polish the library code, and take care of some improvements:

- Always use `$` parameters references instead of `Say` statements for verb responses.
- `bussare.i` — restricted `Syntax` of the _knock_ verb to `object` instead of `thing` (what's the purpose of knocking on somebody?)
- `lanciare.i` — many significant messages improvements!
- `aggredire.i` — readjusted the _shoot_ verbs to the Italian language, since their original English usage didn't overlap their use in Italian.
- `prendere.i` — improved CHECK responses based on whether the holder is an actor or an object.


## v0.1.1 (2021/12/02)

### Add Transcript Verbs

> Apply to Italian library equivalent changes to English Foundation v0.2.4.

Added commands to activate and stop saving a transcript of the game to file, so that players using a command line interpreter can access this feature.
Based on the changes from Spanish Foundation v0.3.3.

- `meta_partita.i` — added the following META VERBs to control game transcription:
    + `trascrizione0` — prints the correct commands syntax to activate/deactivate transcripts.
    + `trascrizione_on` — starts the transcription via "trascrizione on".
    + `trascrizione_off` — stops the transcription via "trascrizione off".

### Translate Score Verb

Translated the **score** command and its `Syntax`:

- `meta_punteggio.i` — added the following META VERB to show the score:
    + `vedi_punteggio` — implements the "punteggio" command to show the score.

### Translate Game Session META VERBs

- `meta_partita.i` — Completed the translation of the following verbs, their identifiers, `Syntax`, `Synonyms` and output messages:
    + `abbandona_partita` (_quit_)
    + `carica_partita` (_restore_)
    + `ricomincia_partita` (_restart_)
    + `rifai` (_again_)
    + `salva_partita` (_save_)


## v0.1.0 (2021/11/26)

First public Beta of the Italian library, integrating all features updates of the **[English Foundation Library]** v0.2.3.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

<!-- Issues & Discussion -->

[Discussion #14]: https://github.com/alan-if/alan-i18n/discussions/14 "See Discussion #14 — Libraries Version Scheme"
[Discussion #51]: https://github.com/alan-if/alan-i18n/discussions/51 "See Discussion #51 — THEM WORDS vs PRONOUNs in Italian and Spanish Libs"
[Discussion #57]: https://github.com/alan-if/alan-i18n/discussions/57#discussioncomment-1892673 "Discussion #57 — Spanish Scenery Attributes"

<!-- project files and folders -->

[English Foundation Library]: ../alan_en/Foundation/ "Navigate to the English Alan Library folder"

[VERSIONING.adoc]: ../../VERSIONING.adoc "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
