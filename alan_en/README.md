![Library version][lib badge]&nbsp;
[![Alan version][alan badge]][alan link]&nbsp;
[![License][license badge]][COPYING]

# ALAN Foundation Library English

Reference implementation of the __Foundation Library__, in English, maintained by the ALAN IF community.
Based on the __[ALAN Library v0.6.2]__ (November, 2007), by Göran Forslund, Thomas Nilsson (now [Thomas Nilefalk]) and Stephen Griffiths.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About](#about)
- [Library Status](#library-status)
- [Build Instructions](#build-instructions)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/Foundation/`][Foundation] — English Foundation Library:
    + [`Library.i`][Library.i] — main library module that loads all others:
        * `*.i` — various library modules.
    + [`CHANGELOG.md`][CHANGELOG.md] — Foundation Library Changelog.
    + [`INDEX.md`][INDEX.md] — Foundation Library Index.
    + [`NOTES.md`][NOTES.md] — `Library.i` usage notes.
    + [`COPYING`][COPYING] — [Artistic License 2.0].
- [`/cloak/`][cloak] — _Cloak of Darkness_ sample adventure, by Stephen Griffiths.


# About

The __ALAN Foundation Library__ is based on a recovered copy of the legacy __[ALAN Library v0.6.2]__ (the last version of the 0.6.x series), dating back to November, 2007.

The __ALAN Library__ was the result of the collaborative joint effort of Göran Forslund, Thomas Nilsson (now [Thomas Nilefalk]) and Stephen Griffiths over a long period of time.
It was originally written for ALAN&nbsp;2, and then updated to make use of the new features introduced by ALAN&nbsp;3, but its development was soon abandoned if favour of the newer __[ALAN Library 1]__ that was released in 2010, which was superseded by the __[ALAN Standard Library 2]__ in 2016.

The original v0.6.2 code was edited by [Tristano Ajmone] to ensure compatibility with Alan 3.0beta6; also, some outdated references and broken links were updated accordingly.

The library was then renamed in this project from __ALAN Library__ to "Foundation Library" to avoid confusion with the original library (and all other ALAN Libraries), so that we could start updating it to take advantage of the new ALAN&nbsp;3 features that were introduced since 2007.

An archived copy of the original __[ALAN Library v0.6.2]__ can be found at the [ALAN Goodies] project:

- https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6/

For some background info on the various ALAN libraries created in the course of time, and their history, see:

- [ALAN Wiki] » [Alan Libraries]

# Library Status

- [`Foundation/CHANGELOG.md`][CHANGELOG.md]

The __English Foundation Library__ is currently in Beta stage.
We're gradually updating it to take advantage of the new ALAN&nbsp;3 features that were introduced since 2007, as well as refactoring its source code to meet the goals of this project.

Until the library reaches its first stable release with v1.0.0, its code will be subject to frequent changes, including backwards compatibility breaking changes; furthermore, we can't guarantee that its documentation will always be up to date with its latest code changes.


# Build Instructions

To build outdated assets within the English directory `alan_en/`:

    $ rake lib:en:all

To forcefully rebuild all assets in the English directory:

    $ rake lib:en:all -B


# License

- [`COPYING`][COPYING]

The __ALAN Foundation Library__ is released under the terms of the [Artistic License 2.0].

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0 "View the Artistic License 2.0 at Open Source Initiative"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

[ALAN Wiki]: https://github.com/alan-if/alan/wiki/ "Visit the ALAN Wiki"
[Alan Libraries]: https://github.com/alan-if/alan/wiki/Alan-Libraries "ALAN Wiki » Alan Libraries"

<!-- ALAN Libs -->

[ALAN Library v0.6.2]: https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6 "View the original ALAN Library v0.6.2 at the ALAN Goodies repository"

[ALAN Library 1]: https://www.alanif.se/download-alan-v3/download-library/library-v1-00 "Go to the download page of ALAN Library v1.0 on ALAN website"

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[ALAN repository]: https://bitbucket.org/alanif/alan "Visit the official ALAN repository on Bitbucket"

<!-- badges -->

[lib badge]: https://img.shields.io/badge/Foundation%20Lib%20EN-0.1.2-yellow "ALAN Foundation Library version"
[alan badge]: https://img.shields.io/badge/ALAN-3.0beta7-yellow
[alan link]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta7 "Tested with Alan SDK 3.0beta7"
[license badge]: https://img.shields.io/badge/license-Artistic%20License%202.0-blue

<!-- project files and folders -->

[Foundation]: ./Foundation/ "Navigate to English Alan IF library folder"
[cloak]: ./cloak/ "Navigate to 'Cloak of Darkness' folder"

[CHANGELOG.md]: ./Foundation/CHANGELOG.md "Read CHANGELOG document"
[COPYING]: ./Foundation/COPYING "View Artistic License 2.0"
[INDEX.md]: ./Foundation/INDEX.md "View Alan Library Index (markdown)"
[NOTES.md]: ./Foundation/NOTES.md "Read usage notes for 'Library.i'"
[Library.i]: ./Foundation/Library.i "View source file of main library module"

<!-- people -->

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
