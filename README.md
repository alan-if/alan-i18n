[![Travis CI Status][travis badge]][travis link]&nbsp;
[![Alan version][alan badge]][alan link]&nbsp;
[![License][license badge]][COPYING]

# ALAN Internationalization Project

Multi-language translations of the __ALAN Starter Library__, a basic [ALAN Interactive Fiction] library to begin creating text adventures in different languages, and provide reference  implementations to add support for new locales.

- https://github.com/alan-if/alan-i18n

Created by [Tristano Ajmone] on April, 2021.

-----

**Table of Contents**


<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [Project Contents](#project-contents)
- [About](#about)
- [License](#license)
- [Useful Links](#useful-links)

<!-- /MarkdownTOC -->

-----

# Project Contents

|       folder      |  locale |          description           |    date   |
|-------------------|---------|--------------------------------|-----------|
| [`/alan_en/`][en] | English | Reference implementation.      | Nov. 2007 |
| [`/alan_es/`][es] | Spanish | By M.Donantuonni & B.Humphrey. | Apr. 2010 |

# About

The goal of the __[Alan-i18n]__ repository is to gather under a single project multilingual implementations of a basic ALAN library to start developing adventures with.

In computing jargon, a spoken language is referred to as a _locale_, to avoid confusion with programming languages, and the term "i18n" stands for [internationalization and localization], i.e. adapting computer software to different languages.

These libraries can be used to start creating text adventures in different locales, or serve as reference implementation for anyone wishing to create a library to support a new locale.

The reference implementation is the English __Starter Library__, based on the __ALAN Library v0.6.2__, which was created by the Alan IF community over the years, and across various Alan incarnations, up to November 2007, after which it was replaced by newer and more sophisticated libraries (__[Library v1]__, and the __[Standard Library v2]__).

For the goals of this project, the older library v0.6.x provided a better reference implementation for those wishing to translate and adapt it to a new locale, because of its highly modular structure where each file handles a specific feature, so we decided to take on its development from where it stopped, gradually update it make use of the new ALAN features that were introduced since 2007, and rename it to avoid confusion with the original library.

The __Starter Library__ is also a good starting point for those who wish to write a highly customized adventure, where the adventure world (its object types, verbs and commands) is tailored to the story needs, because the library strikes a good balance between simplicity and features coverage.
Most features can be tweaked, removed or expanded by acting on the single library module (file) that implements a specific feature, whereas more sophisticated libraries usually come at the price of a more entangled system, where features are interconnected with each other in complex ways.

In any case, as their name suggests, these libraries implementations are intended as starting points to begin working with ALAN IF, in general.

Unlike most other IF authoring systems, ALAN doesn't ship with a default library, and the language doesn't predefine world objects, player commands nor directions; it instead provides authors with the right tools to easily define them according to need.
By design, ALAN is a locale agnostic IF system — i.e. it doesn't assume any target language as being the default one.

The ALAN philosophy is entirely devoted to freedom — not only because it's a free and open source system, but because it provides IF authors with utter freedom when it comes to designing their own adventure worlds, allowing their creation from the ground up, according to the needs of each adventure and the author's personal taste.


# License

- [`COPYING`][COPYING]

The Alan Library was originally part of the Alan repository and its therefore governed by the same [Artistic License 2.0].
All translations of the original English Alan Library are derivative works, and therefore fall under the same license terms.

Any third party sample adventure in this repository is governed by its own license, as specified in the README and/or license file inside its folder.

Every other asset in this repository is to be assumed as being licensed under the [Artistic License 2.0], unless otherwise specified.

More details about the license terms, authors and credits of each third party asset can be found in its README file.


# Useful Links

- [www.AlanIF.se][Alan] — the Alan website.
- [Alan Wiki] — more info and links to Alan projects and assets.
- [Alan IF Google Group] — for community help, announcements and discussions.
- [Alan IF Development team] — GitHub profile and public projects:
    + [Alan Docs] — Alan documentation repository.
    + [Alan sources][Alan GitHub] — source code repository.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Alan-i18n]: https://github.com/alan-if/alan-i18n "Visit the Alan-i18n repository on GitHub"
[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0 "View the Artistic License 2.0 at Open Source Initiative"
[internationalization and localization]: https://en.wikipedia.org/wiki/Internationalization_and_localization "Wikipedia page on internationalization and localization"

<!-- badges -->

[travis badge]: https://travis-ci.com/alan-if/alan-i18n.svg?branch=main "Travis CI: EditorConfig validation status"
[travis link]: https://travis-ci.com/alan-if/alan-if
[alan badge]: https://img.shields.io/badge/ALAN-3.0beta7-yellow
[alan link]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta7 "Tested with Alan SDK 3.0beta7"
[license badge]: https://img.shields.io/badge/license-Artistic%20License%202.0-blue

<!-- project folders -->

[en]: ./alan_en/ "Navigate to ALAN English folder"
[es]: ./alan_es/ "Navigate to ALAN Spanish folder"

<!-- project files -->

[COPYING]: ./COPYING "View Artistic License 2.0"

<!-- ALAN Links -->

[Alan]: https://www.alanif.se/ "Visit the Alan website"
[ALAN Interactive Fiction]: https://www.alanif.se/ "Visit the Alan website"
[Alan Wiki]: https://github.com/alan-if/alan/wiki "Visit the Alan Wiki on GitHub"
[Alan IF Google Group]: https://groups.google.com/g/alan-if/ "Visit the Alan IF discussions group on Google Groups"
[Alan GitHub]: https://github.com/alan-if/alan/ "Visit the Alan source repository on GitHub"
[Alan Docs]: https://github.com/alan-if/alan-docs "Visit the Alan Docs project on GitHub"

[Alan SDK]: https://www.alanif.se/download-alan-v3/development-kits "Go to the Alan SDK section of the Alan website"

<!-- ALAN Libraries -->

[Library v1]: https://www.alanif.se/download-alan-v3/download-library/library-v1-00 "Go to the download page of the Alan Library v1"
[Standard Library v2]: https://github.com/AnssiR66/AlanStdLib "Visit the Standard Library v2 repository on GitHub"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
