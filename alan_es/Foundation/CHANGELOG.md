# Foundation Library ChangeLog

This is the ChangeLog for the __ALAN Foundation Library__, Spanish version.

An archived copy of the original __[Librería pALANte v0.6.1e]__ (from which this library was derived) can be found at the __[ALAN Goodies]__ project.

To learn more about the library version scheme, see the [`VERSION_SCHEME.md`][VERSION_SCHEME.md] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2" -->

- [Beta Releases](#beta-releases)
    - [v0.1.1 \(2021/09/10\)](#v011-20210910)
    - [v0.1.0 \(2021/07/24\)](#v010-20210724)

<!-- /MarkdownTOC -->

-----

# Beta Releases

## v0.1.1 (2021/09/10)

In view of the imminent Alan 3.0Beta8 release, which introduces support for UTF-8 encoded files, all Alan sources, solution and transcript files are converted to UTF-8:

| extension |  file type  |  encoding |
|-----------|-------------|-----------|
| `*.alan`  | ALAN source | UTF-8-BOM |
| `*.i`     | ALAN module | UTF-8-BOM |
| `*.a3s`   | solution    | UTF-8-BOM |
| `*.a3t`   | transcript  | UTF-8     |


> **NOTE** — Although these ALAN files are now encoded in UTF-8, ALAN internally sill handles them as ISO-8859-1, therefore the supported characters set is still limited to valid Latin1 characters.


## v0.1.0 (2021/07/24)

First official Alpha release of the new Spanish __ALAN Foundation Library__.

The library codebase of v0.1.0 is the same as that of the __[Librería pALANte v0.6.1e]__ (April, 2010) archived copy found at the [ALAN Goodies] project.

The following changes were applied to the original library:

- The library is renamed to "ALAN Foundation Library".
- Main module `std.i` renamed to `Library.i`.
- Converted `indice.txt` to `INDICE.md`, as markdown tables.
    + Deleted original `indice.txt`.
- Deleted `leeme.txt`, since its contents are available in main `README.md`.
- Deleted `ReadMe` (from original English library).
- Added `COPYING` file with the Artistic License 2.0, since this is a derivative work of the English ALAN Library.
- Aesthetic changes to code formatting.
- `ayuda.i`: Tweaked obsolete references in output text:
    + email: <thomas.nilsson@progindus.se> &rarr; <thomas@alanif.se>.
    + link: http://www.alanif.se/ &rarr; https://www.alanif.se.
    + author: Thomas Nilsson  &rarr; [Thomas Nilefalk]  (he recently changed his surname).
- Library comments were revised and freely edited:
    + Removed references to the old library and its changes.
    + Provided info according to the new project needs, instead.

The original library is here renamed from "pALANte" to "ALAN Foundation Library" in order to avoid confusion between the two, and in view of the upcoming changes and updates to make use of the new ALAN&nbsp;3 features that were introduced since 2010.

The rationale in renaming the library is that many of the upcoming changes will break backward compatibility, meaning that old adventures built for the __pALANte Library v0.6.1e__ won't work anymore with the new Spanish __ALAN Foundation Library__ by the time the latter has reached v1.0.0.

The __Foundation Library__ is not going to be just a series of updates to the old __Librería pALANte v0.6.1e__, but a full-fledged revisitation of its whole codebase, its driving design philosophy, and the way its modules are named and organized.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

[Librería pALANte v0.6.1e]: https://github.com/alan-if/alan-goodies/tree/master/libs/pALANte_0.6.1e/ "View the original Librería pALANte v0.6.1e at the ALAN Goodies repository"

<!-- Issues & Discussion -->

[Discussion #14]: https://github.com/alan-if/alan-i18n/discussions/14 "See Discussion #14 — Libraries Version Scheme"

<!-- project files and folders -->

[VERSION_SCHEME.md]: ../../VERSION_SCHEME.md "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
