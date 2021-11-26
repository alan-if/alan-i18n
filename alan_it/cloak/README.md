# _Cloak of Darkness_ Italian

**ALAN Foundation Library Italian** implementation of _[Cloak of Darkness]_.

> **WARNING** — This demo adventure is still a work-in-progress adaptation.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About Cloak of Darkness](#about-cloak-of-darkness)
- [About the Italian Port](#about-the-italian-port)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`cloak.alan`][cloak.alan] — _Cloak of Darkness_ Italian.
- [`cloak.ifid`][cloak.ifid] — IFID recovered from original `.a3c`.
- [`walkthrough.a3s`][walkthrough.a3s] — walkthrough commands script.
- [`walkthrough.a3t`][walkthrough.a3t] — generated walkthrough transcript.
- `*.a3s` — various tests' commands script (aka solution files).
- `*.a3t` — various tests' transcripts.


# About Cloak of Darkness

_[Cloak of Darkness]_ is a well known sample adventure, originally created by [Roger Firth], which has been ported to many different IF authoring systems, by different authors, becoming a reference demonstrative adventure for the IF world, and a sort of _Rosetta Stone_ for the various authoring tools and IF languages.


# About the Italian Port

This Italian port of _[Cloak of Darkness]_ is an adaptation of an earlier version created by [Tristano Ajmone] and S3RioUs JokER, in Feb. 2019, as a demo for the __[Alan Italian]__ project (2018–), also by [Tristano Ajmone].

The first Italian port was loosely inspired on the English version for ALAN&nbsp;3, originally implemented by Stephen Griffiths for ALAN&nbsp;2, then adapted to ALAN&nbsp;3 by Thomas Nilsson (now [Thomas Nilefalk]), using ALAN 3.0alpha6 and lib 0.6.1, somewhere around September 2008 — which has been adapted to the new **[English Foundation Library]** and can be found in the [`alan_en/cloak/`][cloak en] folder of this repository.

The original Italian _Cloak_ demo relied on the core grammar module of the __[Alan Italian]__ project (which was included in the **Italian Foundation library**) but didn't use any of the **StdLib Italian** modules, which means that it implemented in its source code all the basic verbs required to play the game.

In order to adapt it to the new **Italian Foundation Library**, the source adventure required significant changes, and dropping all its custom defined verbs in favour of their library-defined counterparts.


# License

We couldn't find any license information regarding the ALAN implementation of _Cloak of Darkness_ by Stephen Griffiths, nor for the original concept and adventure by [Roger Firth]; but it should be safe to assume that it's freely distributable, given the nature and spirit of the original project, and the fact that [Roger Firth] has been hosting and offering in download the various implementation of _[Cloak of Darkness]_ in different IF systems (including the ALAN version here reproduced) without ever questioning license terms.

As for the Italian version of _Cloak of Darkness_, we don't have any Copyright claims whatsoever on the adventure and its code, nor on our translation work, and we're OK with people doing whatever they like with it.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Rosetta Stone]: https://en.wikipedia.org/wiki/Rosetta_Stone "Wikipedia page on Rosetta Stone"

<!-- Cloak -->

[cloak en]: ../../alan_en/cloak/ "Navigate to English 'Cloak of Darkness' folder"
[Cloak of Darkness: ALAN]: http://www.firthworks.com/roger/cloak/alan/ "ALAN implementation of Cloak of Darkness at Roger Firth's website"
[Cloak of Darkness]: http://www.firthworks.com/roger/cloak/ "Visit the homepage of the Cloak of Darkness project"

<!-- ALAN Libs -->

[Alan Italian]: https://github.com/tajmone/Alan3-Italian "Visit the ALAN Italian repository on GitHub"

[English Foundation Library]: ../../alan_en/Foundation/ "Navigate to the English Alan Library folder"

<!-- project files -->

[walkthrough.a3t]: ./walkthrough.a3t "View walkthrough transcript"
[walkthrough.a3s]: ./walkthrough.a3s "View walkthrough solution script"
[cloak.alan]: ./cloak.alan "View source file"
[cloak.ifid]: ./cloak.ifid "View IFID file"

<!-- people -->

[Roger Firth]: http://www.firthworks.com/roger/ "Visit Roger Firth's website"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
