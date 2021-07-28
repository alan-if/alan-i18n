# Starter Library ChangeLog

This is the ChangeLog for the __ALAN Starter Library__, English version.

For the ChangeLog of the original __[ALAN Library v0.6.2]__ (from which this library was derived) see the archived [`ChangeLog`][ChangeLog] file hosted at the __[ALAN Goodies]__ project.

To learn more about the library version scheme, see the [`VERSION_SCHEME.md`][VERSION_SCHEME.md] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2" -->

- [Beta Releases](#beta-releases)
    - [v0.1.1 \(2021/07/29\)](#v011-20210729)
    - [v0.1.0 \(2021/07/24\)](#v010-20210724)

<!-- /MarkdownTOC -->

-----


# Beta Releases

## v0.1.1 (2021/07/29)

Convert "meta verbs" to real `META VERB`s, which in the original library were just ordinary verbs (probably the `META` keyword was not available back then).

- Added `wait.i`, and moved therein the 'wait' verb from `meta.it`, since it's not a meta-verb.
- `meta.i` renamed to `meta_session.i`, and all its verbs made META.
- `help.i` renamed to `meta_help.i`, and all its verbs made META.
- `brief.i` renamed to `meta_brief.i`, and all its verbs made META.

## v0.1.0 (2021/07/24)

First official Alpha release of the new __ALAN Starter Library__.

The library codebase of v0.1.0 is the same as that of the __[ALAN Library v0.6.2]__ (Nov. 2007) archived copy hosted at the [ALAN Goodies] project, which itself included some minor tweaks by [Tristano Ajmone] to ensure compatibility with the ALAN Beta7, plus some aesthetic changes, all of which are thereof documented, along with the original [`ChangeLog`][ChangeLog] file.

The following changes were applied to the original library:

- The library is renamed to "ALAN Starter Library".
- Main module `std.i` renamed to `StartLib.i`.
- Deleted original `README.md`/`ReadMe`.
- Deleted `index.txt`.
- Adapted `NOTES.md` and `INDEX.md` according to changes and new needs.
- Aesthetic changes to code formatting.
- Library comments were revised and freely edited:
    + Removed references to the old library and its changes.
    + Provided info according to the new project needs, instead.

The original library is here renamed from "Alan Library" to "ALAN Starter Library" in order to avoid confusion between the two, and in view of the upcoming changes and updates to make use of the new ALAN&nbsp;3 features that were introduced since 2007.

The rationale in renaming the library is that many of the upcoming changes will break backward compatibility, meaning that old adventures built for the __ALAN Library v0.6.x__ won't work anymore with the new __ALAN Starter Library__ by the time the latter has reached v1.0.0.

The __Starter Library__ is not going to be just a series of updates to the old __ALAN Library v0.6.x__, but a full-fledged revisitation of its whole codebase, its driving design philosophy, and the way its modules are named and organized.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

[ALAN Library v0.6.2]: https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6 "View the original ALAN Library v0.6.2 at the ALAN Goodies repository"

[ChangeLog]: https://github.com/alan-if/alan-goodies/blob/master/libs/ALAN-Library_0.6/ChangeLog "View ALAN Library v0.6.2 ChangeLog at the ALAN Goodies project"

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
