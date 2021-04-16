# Alan IF English

English Alan IF library v0.6.2 (November, 2007), by Göran Forslund, Thomas Nilsson (now [Thomas Nilefalk]) and Stephen Griffiths.
Edited by [Tristano Ajmone] to ensure compatibility with Alan 3.0beta6.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About](#about)
- [License](#license)
- [Some Background on the Libraries](#some-background-on-the-libraries)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/lib_en/`][lib_en] — ALAN Library v0.6.2:
    + [`std.i`][std.i] — main library module that loads all others:
        * `*.i` — various library modules.
    + [`README.md`][README.md] — original ReadMe, plus Tristano's notes.
    + [`NOTES.md`][NOTES.md] — Usage notes for `std.i`.
    + [`index.md`][index.md] — INDEX of the Alan Library (markdown version).
    + [`index.txt`][index.txt] — INDEX of the Alan Library (original).
    + [`ChangeLog`][ChangeLog] — original v0.6.2 Changelog.
    + [`COPYING`][COPYING] — [Artistic License 2.0].

# About

This is a recovered copy of the legacy ALAN Library v0.6.2 (the last version of the 0.6.x series), dating back to November, 2007.
Edited by [Tristano Ajmone] to ensure compatibility with Alan 3.0beta6.

This ALAN Library was the result of the collaborative joint effort of Göran Forslund, Thomas Nilsson (now Thomas Nilefalk) and Stephen Griffiths over a long period of time.
The library was originally written for ALAN v2, and then updated to make use of the new features introduced by ALAN v3.


# License

- [`COPYING`][COPYING]

The library is released under the terms of the [Artistic License 2.0].


# Some Background on the Libraries

> __Tristano's Note__ — Having joined the ALAN community when Anssi's StdLib 2.1 was already the new established library, I haven't had any actual experience with previous versions of the ALAN Library. The following information might be inaccurate. Corrections are welcome.

From what I've gathered, the evolution of the ALAN standard libraries is roughly as follows.

- The original __ALAN Library__, up to v0.4.0 (2001–2002), was designed for ALAN 2.
- __ALAN Library v0.4.1__ was ported to work with ALAN 3, and was updated up to v0.6.2 (2002–2007).
- __[ALAN Library 1]__ (2010–2011) was a new library design (redesign?) by [Anssi Räisänen], where the library code was organized into four main sumodules.
- The __[ALAN Standard Library 2]__ (2016–) was designed by [Anssi Räisänen], this being a new library altogether, targeting specifically ALAN 3 new features and introducing extensive features in formally organized library structure. This is the current ALAN Library in use today, v2.1 being the latest release.

The original ALAN Library, up to v0.6.2 was the result of the collaborative joint effort of Göran Forslund, Thomas Nilsson (now [Thomas Nilefalk]) and Stephen Griffiths. The [ALAN Library 1] was designed by [Anssi Räisänen]. The new [ALAN Standard Library 2]  (aka StdLib) is the work of [Anssi Räisänen].

All three libraries are distributed under the [Artistic License 2.0].

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0 "View the Artistic License 2.0 at Open Source Initiative"

<!-- ALAN Libs -->

[ALAN Library 1]: https://www.alanif.se/download-alan-v3/download-library/library-v1-00 "Go to the download page of ALAN Library v1.0 on ALAN website"

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[ALAN repository]: https://bitbucket.org/alanif/alan "Visit the official ALAN repository on Bitbucket"

<!-- project files and folders -->

[lib_en]: ./lib_en/ "Navigate to English Alan IF library folder"

[ChangeLog]: ./lib_en/ChangeLog "Read ChangeLog document"
[COPYING]: ./lib_en/COPYING "View Artistic License 2.0"
[index.md]: ./lib_en/index.md "View Alan Library Index (markdown)"
[index.txt]: ./lib_en/index.txt "View Alan Library Index (plain text)"
[NOTES.md]: ./lib_en/NOTES.md "Read usage notes for 'std.i'"
[README.md]: ./lib_en/README.md "View README document"
[std.i]: ./lib_en/std.i "View source file of main library module"

<!-- people -->

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
