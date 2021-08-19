![Library version][lib badge]&nbsp;
[![Alan version][alan badge]][alan link]&nbsp;
[![License][license badge]][COPYING]

# ALAN Foundation Library Spanish

Spanish implementation of the __Foundation Library__, maintained by the ALAN IF community.

Based on the __[Librería pALANte v0.6.1e][pALANte]__ (April, 2010), by [Bruce Humphrey] and Marcos Donnantuoni.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About](#about)
- [Library Status](#library-status)
- [Usage Example](#usage-example)
- [License](#license)
- [Reference Links](#reference-links)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/Foundation/`][Foundation/] — Spanish Foundation Library:
    + [`Library.i`][Library.i] — main library module that loads all others:
        * `*.i` — various library modules.
    + [`CHANGELOG.md`][CHANGELOG.md] — Foundation Library Changelog.
    + [`INDICE.md`][INDICE.md] — Foundation Library Index.
- [`vampiro/`][vampiro/] — The _[Vampiro]_ sample adventure, by [Bruce Humphrey].

# About

Marcos Donnantuoni and Bruce Humphrey — among others — began working on the Spanish localisation of Alan back in 2005, but the project was eventually abandoned, incomplete.

Then, in 2010, Bruce Humphrey took up the project again and completed the pALANte library and the _Vampiro_ sample adventure.

The files inside the [`/Foundation/`][Foundation/] folder were extracted from the `lib_es_0_6_1e.zip` archive downloaded from:

- https://www.caad.es/?q=node/1718

An archived copy of the original __[pALANte v0.6.1e][pALANte]__ library can be found at the [ALAN Goodies] project:

- https://github.com/alan-if/alan-goodies/tree/master/libs/pALANte_0.6.1e/


# Library Status

- [`CHANGELOG.md`][CHANGELOG.md]

Although we're planning to update the __Spanish Foundation Library__ to take advantage of the new ALAN&nbsp;3 features that were introduced since 2010, currently its code is the same as the original __[pALANte]__ library.

The original sources were reformatted by [Tristano Ajmone] to conform to code style conventions of this repository, all changes were merely aesthetic, not affecting the source code; some output text containing obsolete links and references was also amended.

The [`Foundation/COPYING`][COPYING] file of the [Artistic License 2.0] was added, since this is a derivative work of the [English Alan Library].


# Usage Example

```alan
-- Ejemplo de aventura mínima para ALAN

import 'Library.i'. -- importar la librería española


The inicio Isa location
  Name Inicio.  -- nombre que aparece en el intérprete
    Description
      "Toda historia empieza en un lugar..."
End The inicio.


-- Iniciar la aventura --
Start At inicio.
schedule ini_terms at limbo after 0. -- necesario para que funcione la
                                     -- librería castellana.

"$tInicio: Toda historia tiene un inicio...$n"
```


# License

- [`Foundation/COPYING`][COPYING]

The Spanish Alan Library is the work of [Bruce Humphrey] and Marcos Donnantuoni, based on the original [English Alan Library] by Göran Forslund, Stephen Griffiths and Thomas Nilsson (now [Thomas Nilefalk]).

Although the original Spanish library didn't contain any license file or info, we're assuming it's governed under the same [Artistic License 2.0] of the original [English Alan Library], since its a derivative work thereof.

- [`vampiro/`][vampiro/]

The _[Vampiro]_ sample adventure was ported to Alan by [Bruce Humphrey], based on the original adventure by Jaume Alcazo Castellarnau, which was released under BSD License.
Although we couldn't find any license file or info in the Alan version of _Vampiro_, [its page at WikiCAAD] mentions that it's BSD licensed.


# Reference Links

- [Wikipedia ES » Aventura conversacional]
- [BlogSpot » Alan IF en Español] — Bruce Humphrey's blog on creating Spanish text adventures using ALAN.

<!-- MarkdownTOC:excluded -->
## CAAD

- [CAAD] — Club de Aventuras AD:
    + [Librería pALANte para ALAN, v0.6.1e]
- [WikiCAAD » Alan]
- [WikiCAAD » Bruce Humphrey]
- [CAAD Forum]
- [CAAD FaceBook]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[CAAD FaceBook]: https://www.facebook.com/groups/33938974840/
[CAAD]: https://www.caad.es  "Visit the CAAD (Club de Aventuras AD) website"
[WikiCAAD » Alan]: https://wiki.caad.es/Alan
[CAAD Forum]: https://foro.caad.es
[Librería pALANte para ALAN, v0.6.1e]: https://www.caad.es/?q=node/1718 "Download page of the original pALANte library at CAAD"
[pALANte]: https://github.com/alan-if/alan-goodies/tree/master/libs/pALANte_0.6.1e/ "View the original pALANte Library v0.6.1e at the ALAN Goodies repository"

[Wikipedia ES » Aventura conversacional]: https://es.wikipedia.org/wiki/Aventura_conversacional

[BlogSpot » Alan IF en Español]: https://alanif.blogspot.com/
[WikiCAAD » Bruce Humphrey]: https://wiki.caad.es/Bruce_Humphrey

[English Alan Library]: ../alan_en/lib_en/ "Navigate to the English Alan Library folder"
[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0  "View the Artistic License 2.0 at Open Source Initiative"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

<!-- Vampiro -->

[Vampiro]: https://www.caad.es/?q=node/1717 "View original page of Vampiro at CAAD"
[its page at WikiCAAD]: https://wiki.caad.es/Vampiro_(Alan) "WikiCAAD » Vampiro (Alan)"

<!-- badges -->

[lib badge]: https://img.shields.io/badge/Foundation%20Lib%20ES-0.1.0-yellow "ALAN Foundation Library version"
[alan badge]: https://img.shields.io/badge/ALAN-3.0beta7-yellow
[alan link]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta7 "Tested with Alan SDK 3.0beta7"
[license badge]: https://img.shields.io/badge/license-Artistic%20License%202.0-blue

<!-- project files and folders -->

[Foundation/]: ./Foundation/ "Navigate to Spanish Alan IF library folder"
[vampiro/]: ./vampiro/ "Navigate to sample adventure"

[CHANGELOG.md]: ./Foundation/CHANGELOG.md "Read CHANGELOG document"
[COPYING]: ./Foundation/COPYING "View Artistic License 2.0"
[INDICE.md]: ./Foundation/INDICE.md "View file"
[Library.i]: ./Foundation/Library.i "View source file of main library module"

<!-- people -->

[Bruce Humphrey]: https://alanif.blogspot.com/ "Visit Bruce Humphrey's blog on ALAN Spanish"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
