# Italian Foundation Library Status

Some temporary developer notes to keep track of the work until the library is fully fleshed out and polished.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Modules Status](#modules-status)
- [Foundation Features Status](#foundation-features-status)

<!-- /MarkdownTOC -->

-----

# Modules Status

The following table contains the list of the Italian modules, their original English counterparts and progress status, as well as the additional modules for the Italian language.

|                   Lib IT                   |          Lib EN          |  Status |
|--------------------------------------------|--------------------------|---------|
| [`Library.i`][Library.i]                   | [`std.i`][std.i]         | WIP     |
| [`accendere.i`][accendere.i]               | [`turn.i`][turn.i]       | 60%     |
| [`aggredire.i`][aggredire.i]               | [`attack.i`][attack.i]   | 10%     |
| [`aiuto.i`][aiuto.i]                       | [`help.i`][help.i]       | 85%     |
| [`annusare.i`][annusare.i]                 | [`smell.i`][smell.i]     | 85%     |
| [`aprire.i`][aprire.i]                     | [`open.i`][open.i]       | 5%      |
| [`ascoltare.i`][ascoltare.i]               | [`listen.i`][listen.i]   | 85%     |
| [`aspettare.i`][aspettare.i]               | [`meta.i`][meta.i]       | &check; |
| [`baciare.i`][baciare.i]                   | [`kiss.i`][kiss.i]       | 90%     |
| [`bloccare.i`][bloccare.i]                 | [`lock.i`][lock.i]       | 80%     |
| [`bussare.i`][bussare.i]                   | [`knock.i`][knock.i]     | 90%     |
| [`dare.i`][dare.i]                         | [`give.i`][give.i]       | 80%     |
| [`eroe.i`][eroe.i]                         | [`hero.i`][hero.i]       | 99%     |
| [`esaminare.i`][esaminare.i]               | [`examine.i`][examine.i] | 15%     |
| [`globali.i`][globali.i]                   | [`global.i`][global.i]   | TBD!    |
| [`grammatica.i`][grammatica.i]             |                          | WIP     |
| [`guardare.i`][guardare.i]                 | [`look.i`][look.i]       | 99%     |
| [`indossare.i`][indossare.i]               | [`wear.i`][wear.i]       | 99%     |
| [`inventario.i`][inventario.i]             | [`invent.i`][invent.i]   | 99%     |
| [`lanciare.i`][lanciare.i]                 | [`throw.i`][throw.i]     | 20%     |
| [`leggere.i`][leggere.i]                   | [`read.i`][read.i]       | 85%     |
| [`limbo.i`][limbo.i]                       | [`nowhere.i`][nowhere.i] | WIP     |
| [`mangiare.i`][mangiare.i]                 | [`eat.i`][eat.i]         | 90%     |
| [`messaggi_runtime.i`][messaggi_runtime.i] |                          | 70%     |
| [`meta_partita.i`][meta_partita.i]         | [`meta.i`][meta.i]       | TBD!    |
| [`meta_punteggio.i`][meta_punteggio.i]     | [`meta.i`][meta.i]       | TBD!    |
| [`meta_verbosità.i`][meta_verbosità.i]     | [`brief.i`][brief.i]     | &check; |
| [`mettere.i`][mettere.i]                   | [`put.i`][put.i]         | 50%     |
| [`parlare.i`][parlare.i]                   | [`talk.i`][talk.i]       | 50%     |
| [`persone.i`][persone.i]                   | [`people.i`][people.i]   | 90%     |
| [`prendere.i`][prendere.i]                 | [`take.i`][take.i]       | 20%     |
| [`saltare.i`][saltare.i]                   | [`jump.i`][jump.i]       | 99%     |
| [`scenario.i`][scenario.i]                 | [`scenery.i`][scenery.i] | 99%     |
| [`spingere.i`][spingere.i]                 | [`push.i`][push.i]       | 90%     |
| [`toccare.i`][toccare.i]                   | [`touch.i`][touch.i]     | &check; |


# Foundation Features Status

Since the Italian library work was built on the old **ALAN Library v 0.6.2** codebase, the following table tracks the integration status of the features added to the English Foundation library in the meantime, and those of the Spanish library for features which are not found in the English library but which are common to the Spanish and Italian locales.

References are provided via the version number in which they were added in the reference library, first, followed by a description.

|   rev.   |                feature                 |  status |
|----------|----------------------------------------|---------|
| EN 0.1.0 | Module `std.i` renamed to `Library.i`. | &check; |
| EN 0.1.1 | Meta Verbs: add `META` modifier.       | &check; |
| EN 0.1.2 | New `xDesc` attribute.                 | &check; |
| EN 0.2.0 | New wearing mechanics                  | &check; |
| EN 0.2.0 | Drop implicit taking                   | &check; |
| EN 0.2.0 | Fix `undress` verb.                    | &check; |
| EN 0.2.1 | Switch to UTF-8 encoding               | &check; |
| EN 0.2.2 | Honour `xDesc`  in scenery             | &check; |
| EN 0.2.3 | Fix verbs targetting containers        | &check; |

Also, keep an eye on the following Spanish changes which might soon be included in the English library too:


|   rev.   |       feature        | status |
|----------|----------------------|--------|
| ES 0.3.3 | Add transcript verbs | ???    |
| ES 0.3.3 | Proper-named actors  | ???    |


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- Lib IT modules -->

[Library.i]: ./Library.i "View source module"
[accendere.i]: ./accendere.i "View source module"
[aggredire.i]: ./aggredire.i "View source module"
[aiuto.i]: ./aiuto.i "View source module"
[annusare.i]: ./annusare.i "View source module"
[aprire.i]: ./aprire.i "View source module"
[ascoltare.i]: ./ascoltare.i "View source module"
[aspettare.i]: ./aspettare.i "View source module"
[baciare.i]: ./baciare.i "View source module"
[bloccare.i]: ./bloccare.i "View source module"
[bussare.i]: ./bussare.i "View source module"
[dare.i]: ./dare.i "View source module"
[eroe.i]: ./eroe.i "View source module"
[esaminare.i]: ./esaminare.i "View source module"
[globali.i]: ./globali.i "View source module"
[grammatica.i]: ./grammatica.i "View source module"
[guardare.i]: ./guardare.i "View source module"
[indossare.i]: ./indossare.i "View source module"
[inventario.i]: ./inventario.i "View source module"
[lanciare.i]: ./lanciare.i "View source module"
[leggere.i]: ./leggere.i "View source module"
[limbo.i]: ./limbo.i "View source module"
[mangiare.i]: ./mangiare.i "View source module"
[messaggi_runtime.i]: ./messaggi_runtime.i "View source module"
[meta_partita.i]: ./meta_partita.i "View source module"
[meta_punteggio.i]: ./meta_punteggio.i "View source module"
[meta_verbosità.i]: ./meta_verbosità.i "View source module"
[mettere.i]: ./mettere.i "View source module"
[parlare.i]: ./parlare.i "View source module"
[persone.i]: ./persone.i "View source module"
[prendere.i]: ./prendere.i "View source module"
[saltare.i]: ./saltare.i "View source module"
[scenario.i]: ./scenario.i "View source module"
[spingere.i]: ./spingere.i "View source module"
[toccare.i]: ./toccare.i "View source module"

<!-- Lib EN modules -->

[attack.i]: ../../alan_en/lib_en/attack.i "View original source module"
[brief.i]: ../../alan_en/lib_en/brief.i "View original source module"
[eat.i]: ../../alan_en/lib_en/eat.i "View original source module"
[examine.i]: ../../alan_en/lib_en/examine.i "View original source module"
[give.i]: ../../alan_en/lib_en/give.i "View original source module"
[global.i]: ../../alan_en/lib_en/global.i "View original source module"
[help.i]: ../../alan_en/lib_en/help.i "View original source module"
[hero.i]: ../../alan_en/lib_en/hero.i "View original source module"
[invent.i]: ../../alan_en/lib_en/invent.i "View original source module"
[jump.i]: ../../alan_en/lib_en/jump.i "View original source module"
[kiss.i]: ../../alan_en/lib_en/kiss.i "View original source module"
[knock.i]: ../../alan_en/lib_en/knock.i "View original source module"
[listen.i]: ../../alan_en/lib_en/listen.i "View original source module"
[lock.i]: ../../alan_en/lib_en/lock.i "View original source module"
[look.i]: ../../alan_en/lib_en/look.i "View original source module"
[meta.i]: ../../alan_en/lib_en/meta.i "View original source module"
[nowhere.i]: ../../alan_en/lib_en/nowhere.i "View original source module"
[open.i]: ../../alan_en/lib_en/open.i "View original source module"
[people.i]: ../../alan_en/lib_en/people.i "View original source module"
[push.i]: ../../alan_en/lib_en/push.i "View original source module"
[put.i]: ../../alan_en/lib_en/put.i "View original source module"
[read.i]: ../../alan_en/lib_en/read.i "View original source module"
[scenery.i]: ../../alan_en/lib_en/scenery.i "View original source module"
[smell.i]: ../../alan_en/lib_en/smell.i "View original source module"
[std.i]: ../../alan_en/lib_en/std.i "View original source module"
[take.i]: ../../alan_en/lib_en/take.i "View original source module"
[talk.i]: ../../alan_en/lib_en/talk.i "View original source module"
[throw.i]: ../../alan_en/lib_en/throw.i "View original source module"
[touch.i]: ../../alan_en/lib_en/touch.i "View original source module"
[turn.i]: ../../alan_en/lib_en/turn.i "View original source module"
[wear.i]: ../../alan_en/lib_en/wear.i "View original source module"

<!-- EOF -->
