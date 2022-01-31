![Library version][lib badge]&nbsp;
[![Alan version][alan badge]][alan link]&nbsp;
[![License][license badge]][COPYING]

# ALAN Foundation Library Italian

Italian implementation of the __Foundation Library__, maintained by the ALAN IF community.

Based on the __[Alan Italian]__ project (2018–), by [Tristano Ajmone].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Library Status](#library-status)
- [Build Instructions](#build-instructions)
- [Usage Instructions](#usage-instructions)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/Foundation/`][Foundation/] — Italian Foundation Library:
    + [`Library.i`][Library.i] — main library module that loads all others:
        * `*.i` — various library modules.
    + [`CHANGELOG.md`][CHANGELOG.md] — Foundation Library Changelog.
- [`/cloak/`][cloak] — _Cloak of Darkness_ sample adventure (WIP).
- [`/tests/`][tests] — Italian Test suite.

# Library Status

- [`CHANGELOG.md`][CHANGELOG.md]

The __Italian Foundation Library__ is actively developed by [Tristano Ajmone], who has implemented a novel approach to handle the Italian grammar in the library at initialization time, which simplifies using the library.

Our goal for the new __Foundation Library__ is to take advantage of the new ALAN&nbsp;3 features that were introduced in the course of time, and strive to have all library translations mirror each other in terms of new features and design choices.

Until the library reaches its first stable release with v1.0.0, its code will be subject to frequent changes, including backwards compatibility breaking changes; furthermore, we can't guarantee that its documentation will always be up to date with its latest code changes.


# Build Instructions

To build outdated assets within the Italian directory `alan_it/`:

    $ rake lib:it:all

To forcefully rebuild all assets in the Italian directory:

    $ rake lib:it:all -B


# Usage Instructions

The [`Library.i`][Library.i] file is the main library module that imports all others.

In order to use the library is sufficient to import this single module from your main adventure source file:

```alan
Import 'Library.i'.
```

and add the library folder to the import paths when invoking the compiler:

```batch
alan -include Foundation my_adventure.alan
```

# License

- [`COPYING`][COPYING]

The __ALAN Foundation Library__ is released under the terms of the [Artistic License 2.0].


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0  "View the Artistic License 2.0 at Open Source Initiative"

<!-- ALAN Libs -->

[Alan Italian]: https://github.com/tajmone/Alan3-Italian "Visit the ALAN Italian repository on GitHub"

[English Foundation Library]: ../alan_en/Foundation/ "Navigate to the English Alan Library folder"
[Spanish Foundation Library]: ../alan_es/Foundation/ "Navigate to the Spanish Alan Library folder"

<!-- badges -->

[lib badge]: https://img.shields.io/badge/Foundation_Lib_IT-0.4.0-yellow "ALAN Foundation Library version"
[alan badge]: https://img.shields.io/badge/ALAN-3.0beta8-yellow
[alan link]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta8 "Tested with Alan SDK 3.0beta8"
[license badge]: https://img.shields.io/badge/license-Artistic_License_2.0-blue

<!-- project files and folders -->


[cloak]: ./cloak/ "Navigate to 'Cloak of Darkness' folder"
[Foundation/]: ./Foundation/ "Navigate to Italian Alan IF library folder"
[tests]: ./tests/ "Navigate to tests folder"

[CHANGELOG.md]: ./Foundation/CHANGELOG.md "Read CHANGELOG document"
[COPYING]: ./Foundation/COPYING "View Artistic License 2.0"
[Library.i]: ./Foundation/Library.i "View source file of main library module"

<!-- people and organizations -->

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
