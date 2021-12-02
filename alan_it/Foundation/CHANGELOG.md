# Italian Foundation Library ChangeLog

This is the ChangeLog for the __ALAN Foundation Library__, Italian version.

To learn more about the library version scheme, see the [`VERSIONING.adoc`][VERSIONING.adoc] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Pending Integrations](#pending-integrations)
- [Beta Releases](#beta-releases)
    - [v0.1.1 \(2021/12/02\)](#v011-20211202)
        - [Add Transcript Verbs](#add-transcript-verbs)
        - [Translate Score Verb](#translate-score-verb)
        - [Translate Game Session META VERBs](#translate-game-session-meta-verbs)
    - [v0.1.0 \(2021/11/26\)](#v010-20211126)

<!-- /MarkdownTOC -->

-----

# Pending Integrations

A list of features and changes that need to be replayed on the Italian Foundation, based on releases from either from the **English Foundation** (the reference library) or the **Spanish Foundation**, for changes that only apply to the Spanish and Italian languages, which are similar.

- **Add Transcript Verbs** — `EN v0.2.4`/`ES v0.3.3`

-------------------------------------------------------------------------------

# Beta Releases

The __Italian Foundation Library__ is currently maintained by [Tristano Ajmone].


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

<!-- project files and folders -->

[English Foundation Library]: ../alan_en/Foundation/ "Navigate to the English Alan Library folder"

[VERSIONING.adoc]: ../../VERSIONING.adoc "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
