[![Travis CI Status][travis badge]][travis link]&nbsp;
[![Alan version][alan badge]][alan link]&nbsp;
[![Ruby version][ruby badge]][ruby link]&nbsp;
[![License][license badge]][COPYING]

# ALAN Internationalization Project

Multi-language translations of the __ALAN Foundation Library__, a basic [ALAN Interactive Fiction] library to begin creating text adventures in different languages, and provide reference  implementations to add support for new locales.

- https://github.com/alan-if/alan-i18n

Created by [Tristano Ajmone] on April, 2021.

> **IMPORTANT** — All ALAN sources, solutions and transcripts files in this project are UTF-8 encoded.
> You'll need ALAN version `3.0Beta8` (or above) in order to use this project and its libraries.

-----

**Table of Contents**


<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [Project Contents](#project-contents)
    - [Library Locales](#library-locales)
- [About](#about)
- [Build Instructions](#build-instructions)
- [System Requirements](#system-requirements)
    - [Alan SDK](#alan-sdk)
    - [Ruby](#ruby)
    - [Rake](#rake)
- [License](#license)
- [Useful Links](#useful-links)

<!-- /MarkdownTOC -->

-----

# Project Contents

- [`/_assets/`][_assets/] — toolchain assets.
- [`/alan_en/`][en] — English library.
- [`/alan_es/`][es] — Spanish library.
- [`/alan_it/`][it] — Italian library.
- [`/resources/`][resources/] — developers' resources.
- [`CONTRIBUTING.md`][CONTRIBUTING.md] — _Contributors' Guidelines_.
- [`VERSION_SCHEME.md`][VERSION_SCHEME.md] — _Library Version Scheme_.


## Library Locales

|       folder      |  locale |          description           |    date   |
|-------------------|---------|--------------------------------|-----------|
| [`/alan_en/`][en] | English | Reference implementation.      | Nov. 2007 |
| [`/alan_es/`][es] | Spanish | By M.Donantuonni & B.Humphrey. | Apr. 2010 |
| [`/alan_it/`][it] | Italian | By [Tristano Ajmone]           | Nov. 2021 |

# About

The goal of the __[Alan-i18n]__ repository is to gather under a single project multilingual implementations of a basic ALAN library to start developing adventures with.

In computing jargon, a spoken language is referred to as a _locale_, to avoid confusion with programming languages, and the term "i18n" stands for [internationalization and localization], i.e. adapting computer software to different languages.

These libraries can be used to start creating text adventures in different locales, or serve as reference implementation for anyone wishing to create a library to support a new locale.

The reference implementation is the English __Foundation Library__, based on the __ALAN Library v0.6.2__, which was created by the Alan IF community over the years, and across various Alan incarnations, up to November 2007, after which it was replaced by newer and more sophisticated libraries (__[Library v1]__, and the __[Standard Library v2]__).

For the goals of this project, the older library v0.6.x provided a better reference implementation for those wishing to translate and adapt it to a new locale, because of its highly modular structure where each file handles a specific feature, so we decided to take on its development from where it stopped, gradually update it make use of the new ALAN features that were introduced since 2007, and rename it to avoid confusion with the original library.

The __Foundation Library__ is also a good starting point for those who wish to write a highly customized adventure, where the adventure world (its object types, verbs and commands) is tailored to the story needs, because the library strikes a good balance between simplicity and features coverage.
Most features can be tweaked, removed or expanded by acting on the single library module (file) that implements a specific feature, whereas more sophisticated libraries usually come at the price of a more entangled system, where features are interconnected with each other in complex ways.

In any case, as their name suggests, these libraries implementations are intended as starting points to begin working with ALAN IF, in general.

Unlike most other IF authoring systems, ALAN doesn't ship with a default library, and the language doesn't predefine world objects, player commands nor directions; it instead provides authors with the right tools to easily define them according to need.
By design, ALAN is a locale agnostic IF system — i.e. it doesn't assume any target language as being the default one.

The ALAN philosophy is entirely devoted to freedom — not only because it's a free and open source system, but because it provides IF authors with utter freedom when it comes to designing their own adventure worlds, allowing their creation from the ground up, according to the needs of each adventure and the author's personal taste.


# Build Instructions

This project uses [Rake]  (Ruby's Make) to handle task management and build automation.
Being a dependency based system, Rake allows quick project updates since it will only rebuild those assets that need to be (if any).

A nice feature of Rake is that it might be invoked from any folder within the repository directory, so you don't need to issue the `rake` command from the root folder — as long as you're inside the repository tree the command will work as if typed at the root.

To build outdated assets in the project:

    $ rake

To forcefully rebuild the whole project:

    $ rake -B

To do a dry run without executing actions:

    $ rake -n

To delete all generated files from the project:

    $ rake clobber

To view all available build tasks:

    $ rake -T

To view all tasks and their dependencies:

    $ rake -P


# System Requirements

In order to fully build this project you'll need the following tools:

- __[Alan SDK](#alan-sdk)__ (command line)
- __[Ruby 3](#ruby)__ — and the following Ruby gems:
    + __[Rake](#rake)__
    + __[Asciidoctor]__

## Alan SDK

You'll need the latest Beta version of the command line [Alan SDK]  (Software Development Kit), and make sure that both the Alan compiler and the ARun interpreter binaries are reachable through the system PATH.

> **NOTE** — We're working on an alternative solution that will delegate to Rake the task of downloading and updating the required SDK binaries (according to OS) and add them to a dedicated repository folder (ignore by Git) in order to make this project independent from any global SDK setup.
> In the meantime, you'll need to setup the SDK binaries manually.

## Ruby

You'll need Ruby version 3.

Windows users should use [RubyInstaller], which can also be installed as a [Chocolatey Ruby package] using the [Chocolatey GUI] package manager, which simplifies keeping it always up to date.

## Rake

Some Ruby versions natively ship with Rake (e.g. [Ruby for Windows]), if not just install it via:

    $ gem install rake


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
[travis link]: https://travis-ci.com/alan-if/alan-i18n
[alan badge]: https://img.shields.io/badge/ALAN-3.0beta8-yellow
[alan link]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta8 "Tested with Alan SDK 3.0beta8"
[ruby badge]: https://img.shields.io/badge/Ruby-3.0.2-yellow
[ruby link]: https://www.ruby-lang.org "Requires Ruby 3"
[license badge]: https://img.shields.io/badge/license-Artistic_License_2.0-blue

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

<!-- third party tools -->

[Asciidoctor]: https://github.com/asciidoctor/asciidoctor
[Chocolatey GUI]: https://community.chocolatey.org/packages/ChocolateyGUI
[Chocolatey Ruby package]: https://community.chocolatey.org/packages/ruby
[Rake]: https://ruby.github.io/rake/ "Visit Rake website"
[Ruby for Windows]: https://rubyinstaller.org
[RubyInstaller]: https://rubyinstaller.org

<!-- project files and folders -->

[en]: ./alan_en/ "Navigate to ALAN English folder"
[es]: ./alan_es/ "Navigate to ALAN Spanish folder"
[it]: ./alan_it/ "Navigate to ALAN Italian folder"
[resources/]: ./resources "Navigate to resources folder"
[_assets/]: ./_assets "Navigate to toolchain assets folder"

[COPYING]: ./COPYING "View Artistic License 2.0"
[CONTRIBUTING.md]: ./CONTRIBUTING.md "Read 'Contributors' Guidelines' documentation"
[VERSION_SCHEME.md]: ./VERSION_SCHEME.md "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
