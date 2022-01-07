# Ported Libraries Status

This document tracks the development status of ports of the library to other locales in terms of new features and important changes from the English reference library.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Features Status Table](#features-status-table)
    - [How to Read the Table](#how-to-read-the-table)
- [Features Integrations Guidelines](#features-integrations-guidelines)
    - [The Common Reference Library: English Foundation](#the-common-reference-library-english-foundation)
    - [Similar non-English Languages Tracking Each Other](#similar-non-english-languages-tracking-each-other)
- [On Methodology and Collaboration](#on-methodology-and-collaboration)

<!-- /MarkdownTOC -->

-----

# Features Status Table


| EN                  | feature                                | Spanish             | Italian             |
| :-----------------: | :------------------------------------- | :-----------------: | :-----------------: |
| [`0.3.0`][EN 0.3.0] | Scenery Class Becomes an Attribute.    | &cross;             | [`0.3.0`][IT 0.3.0] |
| [`0.2.5`][EN 0.2.5] | New `messages_library.i` module.       | &cross;             | [`0.3.0`][IT 0.3.0] |
| [`0.2.4`][EN 0.2.4] | Add game transcription META verbs.     | [`0.3.3`][ES 0.3.3] | [`0.1.1`][IT 0.1.1] |
| [`0.2.3`][EN 0.2.3] | Fix verbs targetting containers.       | [`0.3.2`][ES 0.3.2] | [`0.1.0`][IT 0.1.0] |
| [`0.2.2`][EN 0.2.2] | Honour `xDesc`  in scenery.            | [`0.4.0`][ES 0.4.0] | [`0.1.0`][IT 0.1.0] |
| [`0.2.1`][EN 0.2.1] | Switch to UTF-8 encoding.              | [`0.1.1`][ES 0.1.1] | [`0.1.0`][IT 0.1.0] |
| [`0.2.0`][EN 0.2.0] | Fix `undress` verb.                    | [`0.2.0`][ES 0.2.0] | [`0.1.0`][IT 0.1.0] |
| [`0.2.0`][EN 0.2.0] | Drop implicit taking                   | [`0.2.0`][ES 0.2.0] | [`0.1.0`][IT 0.1.0] |
| [`0.2.0`][EN 0.2.0] | New wearing mechanics                  | [`0.2.0`][ES 0.2.0] | [`0.1.0`][IT 0.1.0] |
| [`0.1.2`][EN 0.1.2] | New `xDesc` attribute.                 | [`0.1.3`][ES 0.1.3] | [`0.1.0`][IT 0.1.0] |
| [`0.1.1`][EN 0.1.1] | Meta Verbs: add `META` modifier.       | [`0.1.2`][ES 0.1.2] | [`0.1.0`][IT 0.1.0] |
| [`0.1.0`][EN 0.1.0] | Module `std.i` renamed to `Library.i`. | [`0.1.0`][ES 0.1.0] | [`0.1.0`][IT 0.1.0] |


## How to Read the Table

The above table provides all the various new features and important design changes added to the **English Foundation** reference library, in reverse chronological order (latest changes on top).

The columns indicate, from left to right:

1. The release version number (an active link) of the English library introducing a specific new feature/change.
2. A brief description of the new feature/change.

The remaining columns on the right indicate the status of the various language ports, where each cell contains either a &cross; (not yet implemented) or the release version number (an active link) which implements the specific new feature/change in the library of that language:

Each new feature/change is presented independently, regardless of whether it was added as part of a lager changeset.
This allows to track each new feature/change individually, which is what most library maintainers probably prefer.

The reason why new features and changes are presented by version number in reversed chronical order is to simplify tracking them.
The initial library ports started off from the English **ALAN Library v0.6.x** (the same starting codebase of the **English Foundation**), whereas future ports are more likely to begin working from the latest English Foundation available at that time, and once they finished porting it (i.e. reaching their own `v0.1.0`) they'll need to catch up with the changes that occurred in the English library in the meantime.

Bear in mind that:

- The **Spanish Foundation** was based on the Spanish **pALANte** library, which happened to be a translation of the **ALAN Library v0.6.1** (very close to the codebase of the **English Foundation**, which was built on the **ALAN Library v0.6.2**).
- The **Italian Foundation** was built by choosing and picking now from the **English Foundation**, now from the **Spanish Foundation**, as they were being developed; so by the time it officially entered the repository with its `v0.1.0` it already embodied all the latest new features and changes of the **English Foundation [`0.2.3`][EN 0.2.3]** (i.e. it made its entrance in a state of "features alignment").

Each port has (and will have) its own unique history, either because it might rely on some previous porting work unrelated to the base libraries of this project, or because it was based on an older version of the **ALAN Library v0.x**, or any number of reasons.

The goal of this document and the above table is to simplify features alignment between the various **Foundation Library** ports, regardless of their current status or unique history.
But it also serves as a consultation tool, to allow users to quickly view the status of the various libraries (more on this in the next section).


# Features Integrations Guidelines

The above table was designed with a twofold goal in mind:

1. Allow maintainers, contributors and users to easily asses the status of the various libraries at any point in time.
2. Provide guidance for maintainers and porters of libraries in other languages.

What follows should better clarify the goals and context of features integrations among the libraries.


## The Common Reference Library: English Foundation

The **English Foundation** is always considered to be the reference library when it comes to features and changes which should be replayed in other library locales, in order to keep the libraries aligned in terms of their overall design and features.

The above is true even when a new feature is first added in a ported library,
and subsequently integrated into the English Foundation, because having multiple reference libraries to track would introduce unneeded complexity and lead to confusion.

For example, the game
transcript META VERBs were first added to the Spanish library ([`0.3.3`]
[ES 0.3.3] 2021/11/22), simply because the Spanish library test suite offered better coverage of META VERBs at that time, and were subsequently implemented in the English library later on ([`0.2.4`][EN 0.2.4] 2021/11/30).

Once a feature becomes part of the English library, other libraries should align with it and strive to embody that feature by replaying similar changes in its own codebase.

Each language presents its own challenges, so it's not unlikely that some libraries will have to introduce their own custom features to offer a better user experience.

The new features and changes presented in this document concern changes that are deemed to apply to all libraries, universally, regardless of their language.
Language specific features are excluded from the above table, including changes from the English library which don't qualify for inclusion here (if you look at the English CHANGELOG, you'll realize that many changesets were omitted).


## Similar non-English Languages Tracking Each Other

In case of non-English languages which share strong similarities (e.g. Spanish and Italian), their libraries can also individually track each other's language-specific changes and features, in their own CHANGELOG file (not in this document).

For example, the Italian and Spanish libraries share an additional grammar module (not found in the English library) that handles initialization of all game entities to enforce consistent gender and number via native ALAN constructs and additional custom attributes.
Since these two languages handle gender and number in a very similar fashion, they also share most of the grammar modules' code and structures — if not identically, at least very similarly in terms of the overall approach to tackle the GNA challenges.


# On Methodology and Collaboration

It's important to stress that this is a _collaborative project_, where contributors and users speak and consult with each other all the time.
This document and its reference table were not drafted in the void — they are just consultation material that helps us keep our work on track.

Contributors to this project and maintainers of the various language ports are motivated by the pleasant challenges posed by working on IF libraries — discovering how the complexity of natural languages can be emulated with simplified models in realistic ways — and, most of all, they share a genuine passion for languages in general, which is why they love to follow each other's work, and discover something new about foreign languages they don't know.

This is true for the ALAN project in general, where the motivation of its maintainers and contributors has never been driven by the number of people using ALAN and its assets.
Instead, they conceive this work as a self-fulling journey of learning and discovery in the realm of human languages and their intrinsic beauty — a journey where we are still learning new lessons along the path, all the time, regardless of the amount of work invested and the years that have elapsed.

None of this would have been possible without mutual collaboration.
Any attempts to formalize the collaborative effort via guidelines (including this document) is merely the outcome of lessons learned along this path, leading to a certain method which has proven to facilitate our collective effort.

In no way and under no circumstance our proposed methodology intends to be final or incarnate truth — it's just what worked best for us so far.
We're open to rediscuss our methodology, accepting advise and making room for new needs arising from new participants and the challenges posed by ports to new languages.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- English CHANGELOG -->

[EN 0.3.0]: ./alan_en/Foundation/CHANGELOG.md#v030-20211223 "View English CHANGELOG entry"
[EN 0.2.5]: ./alan_en/Foundation/CHANGELOG.md#v025-20211222 "View English CHANGELOG entry"
[EN 0.2.4]: ./alan_en/Foundation/CHANGELOG.md#v024-20211130 "View English CHANGELOG entry"
[EN 0.2.3]: ./alan_en/Foundation/CHANGELOG.md#v023-20211111 "View English CHANGELOG entry"
[EN 0.2.2]: ./alan_en/Foundation/CHANGELOG.md#v022-20210926 "View English CHANGELOG entry"
[EN 0.2.1]: ./alan_en/Foundation/CHANGELOG.md#v021-20210910 "View English CHANGELOG entry"
[EN 0.2.0]: ./alan_en/Foundation/CHANGELOG.md#v020-20210905 "View English CHANGELOG entry"
[EN 0.1.2]: ./alan_en/Foundation/CHANGELOG.md#v012-20210729 "View English CHANGELOG entry"
[EN 0.1.1]: ./alan_en/Foundation/CHANGELOG.md#v011-20210729 "View English CHANGELOG entry"
[EN 0.1.0]: ./alan_en/Foundation/CHANGELOG.md#v010-20210724 "View English CHANGELOG entry"

<!--
[EN 0.x.x]: ./alan_en/Foundation/CHANGELOG.md "View English CHANGELOG entry"
-->

<!-- Spanish CHANGELOG -->

[ES 0.4.0]: ./alan_es/Foundation/CHANGELOG.md#v040-20211207 "View Spanish CHANGELOG entry"
[ES 0.3.3]: ./alan_es/Foundation/CHANGELOG.md#v033-20211122 "View Spanish CHANGELOG entry"
[ES 0.3.2]: ./alan_es/Foundation/CHANGELOG.md#v032-20211111 "View Spanish CHANGELOG entry"
[ES 0.2.0]: ./alan_es/Foundation/CHANGELOG.md#v020-20210917 "View Spanish CHANGELOG entry"
[ES 0.1.3]: ./alan_es/Foundation/CHANGELOG.md#v013-20210912 "View Spanish CHANGELOG entry"
[ES 0.1.2]: ./alan_es/Foundation/CHANGELOG.md#v012-20210912 "View Spanish CHANGELOG entry"
[ES 0.1.1]: ./alan_es/Foundation/CHANGELOG.md#v011-20210910 "View Spanish CHANGELOG entry"
[ES 0.1.0]: ./alan_es/Foundation/CHANGELOG.md#v010-20210724 "View Spanish CHANGELOG entry"

<!--
[ES 0.x.x]: ./alan_es/Foundation/CHANGELOG.md "View Spanish CHANGELOG entry"
-->


<!-- Italian CHANGELOG -->

[IT 0.3.0]: ./alan_it/Foundation/CHANGELOG.md#v030-20220107 "View Italian CHANGELOG entry"
[IT 0.1.1]: ./alan_it/Foundation/CHANGELOG.md#v011-20211202 "View Italian CHANGELOG entry"
[IT 0.1.0]: ./alan_it/Foundation/CHANGELOG.md#v010-20211126 "View Italian CHANGELOG entry"

<!--
[IT 0.x.x]: ./alan_it/Foundation/CHANGELOG.md "View Italian CHANGELOG entry"
-->

<!-- EOF -->
