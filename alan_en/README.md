![Library version][lib badge]&nbsp;
[![Alan version][alan badge]][alan link]&nbsp;
[![License][license badge]][COPYING]

# ALAN Starter Library English

Reference implementation of the __Starter Library__, in English, maintained by the ALAN IF community.
Based on the __[ALAN Library v0.6.2]__ (November, 2007), by Göran Forslund, Thomas Nilsson (now [Thomas Nilefalk]) and Stephen Griffiths.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About](#about)
- [Library Status](#library-status)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/StartLib/`][StartLib] — English Starter Library:
    + [`StartLib.i`][StartLib.i] — main library module that loads all others:
        * `*.i` — various library modules.
    + [`CHANGELOG.md`][CHANGELOG.md] — Starter Library Changelog.
    + [`INDEX.md`][INDEX.md] — Starter Library Index.
    + [`NOTES.md`][NOTES.md] — `StartLib.i` usage notes.
    + [`COPYING`][COPYING] — [Artistic License 2.0].
- [`/cloak/`][cloak] — _Cloak of Darkness_ sample adventure, by Stephen Griffiths.


# About

The __ALAN Starter Library__ is based on a recovered copy of the legacy __[ALAN Library v0.6.2]__ (the last version of the 0.6.x series), dating back to November, 2007.

The __ALAN Library__ was the result of the collaborative joint effort of Göran Forslund, Thomas Nilsson (now [Thomas Nilefalk]) and Stephen Griffiths over a long period of time.
It was originally written for ALAN&nbsp;2, and then updated to make use of the new features introduced by ALAN&nbsp;3, but its development was soon abandoned if favour of the newer __[ALAN Library 1]__ that was released in 2010, which was superseded by the __[ALAN Standard Library 2]__ in 2016.

The original v0.6.2 code was edited by [Tristano Ajmone] to ensure compatibility with Alan 3.0beta6; also, some outdated references and broken links were updated accordingly.

The library was then renamed in this project from __ALAN Library__ to "Starter Library" to avoid confusion with the original library (and all other ALAN Libraries), so that we could start updating it to take advantage of the new ALAN&nbsp;3 features that were introduced since 2007.

An archived copy of the original __[ALAN Library v0.6.2]__ can be found at the [ALAN Goodies] project:

- https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6/

For some background info on the various ALAN libraries created in the course of time, and their history, see:

- [ALAN Wiki] » [Alan Libraries]

# Library Status

Although we're planning to update the __English Starter Library__ to take advantage of the new ALAN&nbsp;3 features that were introduced since 2007, currently its code is the same as the original __[ALAN Library v0.6.2]__.

# License

- [`COPYING`][COPYING]

The __ALAN Starter Library__ is released under the terms of the [Artistic License 2.0].

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

[lib badge]: https://img.shields.io/badge/StartLib%20EN-0.1.0-yellow "ALAN Starter Library version"
[alan badge]: https://img.shields.io/badge/ALAN-3.0beta7-yellow
[alan link]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta7 "Tested with Alan SDK 3.0beta7"
[license badge]: https://img.shields.io/badge/license-Artistic%20License%202.0-blue

<!-- project files and folders -->

[StartLib]: ./StartLib/ "Navigate to English Alan IF library folder"
[cloak]: ./cloak/ "Navigate to 'Cloak of Darkness' folder"

[CHANGELOG.md]: ./StartLib/CHANGELOG.md "Read CHANGELOG document"
[COPYING]: ./StartLib/COPYING "View Artistic License 2.0"
[INDEX.md]: ./StartLib/INDEX.md "View Alan Library Index (markdown)"
[NOTES.md]: ./StartLib/NOTES.md "Read usage notes for 'std.i'"
[StartLib.i]: ./StartLib/StartLib.i "View source file of main library module"

<!-- people -->

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
