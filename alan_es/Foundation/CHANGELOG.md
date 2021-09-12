# Spanish Foundation Library ChangeLog

This is the ChangeLog for the __ALAN Foundation Library__, Spanish version.

An archived copy of the original __[Librería pALANte v0.6.1e]__ (from which this library was derived) can be found at the __[ALAN Goodies]__ project.

To learn more about the library version scheme, see the [`VERSION_SCHEME.md`][VERSION_SCHEME.md] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Beta Releases](#beta-releases)
    - [v0.1.3 \(2021/09/12\)](#v013-20210912)
        - [New `xDesc` Attribute](#new-xdesc-attribute)
    - [v0.1.2 \(2021/09/12\)](#v012-20210912)
        - [Meta Verbs](#meta-verbs)
    - [v0.1.1 \(2021/09/10\)](#v011-20210910)
        - [UTF-8 Encoding](#utf-8-encoding)
    - [v0.1.0 \(2021/07/24\)](#v010-20210724)
        - [pALANte v0.6.1e](#palante-v061e)

<!-- /MarkdownTOC -->

-----

# Beta Releases

Lacking a native Spanish speaker who could take on maintenance of the Spanish library, [Tristano Ajmone] began updating the __Spanish Foundation Library__ to mirror the changes of the new __[English Foundation Library]__ as much as possible — the limit being the inability to handle text changes due to lack of confidence when it comes to writing in Spanish.

## v0.1.3 (2021/09/12)

### New `xDesc` Attribute

Edit `examinar.i` by adding to EVERY THING the new `xDesc` attribute:

```alan
Add to every thing
  Has xDesc "".
```

And tweak the `examinar` verb so that when the `xDesc` attribute of an object being examined is not an empty string it will print `xDesc`, or fallback to the default message otherwise:

```alan
Add to every thing
  Verb examinar
    Check obj is examinable
      else "No puedes examinar" say the obj. "."
    Does
      If xDesc of obj <> ""
        then say xDesc of obj.
        else "No hay nada particular acerca de" say the obj. "."
      End if.
```

This new attribute (inspired by the StdLib 2) allows to easily provide actors and objects with static examine descriptions without having to override the `examine` verb on them via `Does Only`.



## v0.1.2 (2021/09/12)

### Meta Verbs

Convert "meta verbs" to real `META VERB`s, which in the original library were just ordinary verbs (probably the `META` keyword was not available back then).

- Added `espera.i`, and moved therein the 'wait' verb from `meta.i`, since it's not a meta-verb.
- `meta.i` renamed to `meta_sesión.i`, and all its verbs made META.
- `ayuda.i` renamed to `meta_ayuda.i`, and all its verbs made META.
- `brief.i` renamed to `meta_brief.i`, and all its verbs made META.


## v0.1.1 (2021/09/10)

### UTF-8 Encoding

In view of the imminent Alan 3.0Beta8 release, which introduces support for UTF-8 encoded files, all Alan sources, solution and transcript files are converted to UTF-8:

| extension |  file type  |  encoding |
|-----------|-------------|-----------|
| `*.alan`  | ALAN source | UTF-8-BOM |
| `*.i`     | ALAN module | UTF-8-BOM |
| `*.a3s`   | solution    | UTF-8-BOM |
| `*.a3t`   | transcript  | UTF-8     |


> **NOTE** — Although these ALAN files are now encoded in UTF-8, ALAN internally sill handles them as ISO-8859-1, therefore the supported characters set is still limited to valid Latin1 characters.


## v0.1.0 (2021/07/24)

### pALANte v0.6.1e

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

[English Foundation Library]: ../alan_en/Foundation/ "Navigate to the English Alan Library folder"

[VERSION_SCHEME.md]: ../../VERSION_SCHEME.md "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
