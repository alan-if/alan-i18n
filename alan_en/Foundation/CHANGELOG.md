# English Foundation Library ChangeLog

This is the ChangeLog for the __ALAN Foundation Library__, English version.

For the ChangeLog of the original __[ALAN Library v0.6.2]__ (from which this library was derived) see the archived [`ChangeLog`][ChangeLog] file hosted at the __[ALAN Goodies]__ project.

To learn more about the library version scheme, see the [`VERSIONING.adoc`][VERSIONING.adoc] document.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Beta Releases](#beta-releases)
    - [v0.2.4 \(2021/11/30\)](#v024-20211130)
        - [Add Transcript Verbs](#add-transcript-verbs)
    - [v0.2.3 \(2021/11/11\)](#v023-20211111)
        - [Fix Verbs Moving Objects into Containers](#fix-verbs-moving-objects-into-containers)
    - [v0.2.2 \(2021/09/26\)](#v022-20210926)
        - [Honouring Sceneries xDesc](#honouring-sceneries-xdesc)
    - [v0.2.1 \(2021/09/10\)](#v021-20210910)
        - [Switch to UTF-8 Encoding](#switch-to-utf-8-encoding)
    - [v0.2.0 \(2021/09/05\)](#v020-20210905)
        - [New Wearing Mechanics](#new-wearing-mechanics)
        - [Drop Implicit Taking](#drop-implicit-taking)
        - [Bug Fixes](#bug-fixes)
    - [v0.1.2 \(2021/07/29\)](#v012-20210729)
        - [New `xDesc` Attribute](#new-xdesc-attribute)
    - [v0.1.1 \(2021/07/29\)](#v011-20210729)
        - [Meta Verbs](#meta-verbs)
    - [v0.1.0 \(2021/07/24\)](#v010-20210724)
        - [ALAN Library v0.6.2](#alan-library-v062)

<!-- /MarkdownTOC -->

-----

# Beta Releases


## v0.2.4 (2021/11/30)

### Add Transcript Verbs

Added commands to activate and stop saving a transcript of the game to file, so that players using a command line interpreter can access this feature.
Based on the changes from Spanish Foundation v0.3.3.

- `meta_session.i` — added the following META VERBs to control game transcription:
    + `script0` — prints the correct commands syntax to activate/deactivate transcripts.
    + `script_on` — starts the transcription via "script/transcript on".
    + `script_off` — stops the transcription via "script/transcript off".


## v0.2.3 (2021/11/11)

### Fix Verbs Moving Objects into Containers

Fix some verbs that dislocate an object into a container: before reporting the "done" message and resetting its wearable status, check that the operation succeeded (by verifying that the object is effectively in the target container), since the operation is _not_ guaranteed to succeed — e.g. due to a `TAKING` clause in the target container, which would trigger the `CAN_NOT_CONTAIN` Run-Time MESSAGE without aborting the verb execution.

Without these checks the object would not be transferred to the target container, but its wearing status would be affected (`wearer` set to `nobody` and made `not worn`), since a violation of the `TAKING` clause doesn't abort verb execution, which would compromise the status of a wearable object.

- `give.i` — verb `give`.
- `put.i` — verb `put_in`.
- `throw.i` — verb `throw_in`.


## v0.2.2 (2021/09/26)

### Honouring Sceneries xDesc

If a scenery object has a non-empty `xDesc` attribute, now the library will print its string, otherwise it will just print the default message for attempting actions on scenery objects.

In `scenery.i`, edit the verbs redefined on the `scenery` class:

- Change the default scenery message from "That's only scenery." to "Forget the OBJ, [it's/they're] not important.", which makes it clear to the player that all actions on the object are futile, without breaking the narrative illusion (see [#34]).
- Previously the verbs `examine` and `take` where overridden together, now they are defined separately so that `examine` can handle the `xDesc` attribute.
- Tweak the `examine` verb to print the `xDesc` attribute if it's not an empty string, or a default message otherwise.


> **BUG** — The `Does only` body of `take` on `scenery` instances never executes because of the `Not takeable` attribute defined on the class, which causes `take` to fail the checks on the `object` class.
> This was a pre-existent bug in the original library and needs to be addressed in future updates (possibly, similar problems affect other classes too).


## v0.2.1 (2021/09/10)

### Switch to UTF-8 Encoding

In view of the imminent Alan 3.0Beta8 release, which introduces support for UTF-8 encoded files, all Alan sources, solution and transcript files are converted to UTF-8:

| extension |  file type  |  encoding |
|-----------|-------------|-----------|
| `*.alan`  | ALAN source | UTF-8-BOM |
| `*.i`     | ALAN module | UTF-8-BOM |
| `*.a3s`   | solution    | UTF-8-BOM |
| `*.a3t`   | transcript  | UTF-8     |


> **NOTE** — Although these ALAN files are now encoded in UTF-8, ALAN internally sill handles them as ISO-8859-1, therefore the supported characters set is still limited to valid Latin1 characters.


## v0.2.0 (2021/09/05)

### New Wearing Mechanics

The wearing mechanics have been entireLy redesigned, the new system being simpler and less error-prone, also allowing NPCs to wear items:

- Removed the `worn` ENTIY, which is now replaced by two new attributes defined on every `object`:
    + `wearer` — a reference attribute pointing to the wearing actor or `nobody` (a dummy actor at `nowhere`).
    + `worn` — a boolean attribute. Also needed because ALAN aggregators only support boolean attributes in filters.
- The `nobody` actor instance, located at `nowhere`, is defined in `people.i` as a dummy placeholder for the new `wearer` attribute, to indicate that a `wearable` item is unworn if its wearer is the `nobody` instance.
- The `wear` verb now makes the worn item `is worn` and sets its `wearer to hero`.
- Verbs that were relying on the `worn` entity have been adapted to the new system:
    + Verbs `wear`, `remove` and `undress` (in `wear.i`).
    + Verbs `take`, `pick_up1` and `pick_up2` (in `take.i`).
    + The `invent` verb (in `invent.i`).
- Every verb that moves around object must now also make that object unworn by making it `not worn` and setting its `wearer to nobody`. The following verbs were modified accordingly:
    + `undress` (in `wear.i`)
    + `eat` (in `eat.i`) — edibles shouldn't be wearable, but you never know in IF.
    + `drink` (in `eat.i`) — drinkables shouldn't be wearable, but you never know in IF.
    + `give` (in `give.i`)
    + `put` (in `put.i`)
    + `put_in` (in `put.i`)
    + `put_near`, `put_behind`, `put_on` and `put_under` (in `put.i`)
    + `take`, `pick_up1` and `pick_up2` (in `take.i`)
    + `drop`, `put_down1` and `put_down2` (in `take.i`)
    + `take_from` (in `take.i`)
    + `throw` (in `throw.i`)
    + `throw_at` and `throw_to` (in `throw.i`)
    + `throw_in` (in `throw.i`)
- The inventory verb (`invent` in `invent.i`) now lists separately carried and worn items, by iterating twice through every item `in hero` and by checking the `worn` attribute status to distinguish between items that are simply carried and those that are being worn.
- In `examine.i`, and additional definition of the `examine` verb `Does after` is implemented on every actor to list separately carried and worn items, similarly to how inventory works for the Hero.

These new features also required some tweaks here and there:

- In `globals.i`:
    + Every actor is provided with the `Container` propriety.
    + The `plural` attribute is now defined on `entity` instead of `thing` to simplify handling run-time MESSAGEs, verb checks and filters.
        This can also be useful in advanced adventures which need to refer to locations names, which might be singular or plural named.
- Two new modules have been added to the library:
    + `temp.i` — defining the `temp` location, on which the `cnt` numeric attribute is defined for storing temporary values needed in some complex library code.
    + `messages_runtime.i` — redefines run-time messages to add "(being worn)" to each worn item being listed through the `list` statement. Useful in case author need to use `list` without having to replicate the iteration code for producing two separate lists for carried and worn items.

The _Cloak of Darkness_ adventure had to be slightly tweaked in order to keep working with the new changes.

### Drop Implicit Taking

We decided that the Foundation Library will not implement implicit taking in any of its verbs, leaving it instead for end authors to decide whether to provide or not this feature in their adventure, which verbs deserve implicit taking, and how to implement it, according to their specific needs.
This choice affected a single library verb:

- `wear` (in `wear.i`) — add a CHECK to ensure that the target wearable item is possessed by the Hero; remove implicit taking from verb body.

### Bug Fixes

- `undress` (in `wear.i`) — the verb was implemented on `object` although it's a verb without parameters supposed to execute on `actor` instances; the verb has now been made a global verb.

## v0.1.2 (2021/07/29)

### New `xDesc` Attribute

Edit `examine.i` by adding to EVERY THING the new `xDesc` attribute:

```alan
Add to every thing
  Has xDesc "".
```

And tweak the `examine` verb so that when the `xDesc` attribute of an object being examined is not an empty string it will print `xDesc`, or fallback to the default message otherwise:

```alan
Add to every thing
  Verb examine
    Check obj is examinable
      else "You can't examine" say the obj. "."
    Does
      If xDesc of obj <> ""
        then say xDesc of obj.
        else "There is nothing special about" say the obj. "."
      End if.
```

This new attribute (inspired by the StdLib 2) allows to easily provide actors and objects with static examine descriptions without having to override the `examine` verb on them via `Does Only`.


## v0.1.1 (2021/07/29)

### Meta Verbs

Convert "meta verbs" to real `META VERB`s, which in the original library were just ordinary verbs (probably the `META` keyword was not available back then).

- Added `wait.i`, and moved therein the 'wait' verb from `meta.it`, since it's not a meta-verb.
- `meta.i` renamed to `meta_session.i`, and all its verbs made META.
- `help.i` renamed to `meta_help.i`, and all its verbs made META.
- `brief.i` renamed to `meta_brief.i`, and all its verbs made META.

## v0.1.0 (2021/07/24)

### ALAN Library v0.6.2

First official Alpha release of the new __ALAN Foundation Library__.

The library codebase of v0.1.0 is the same as that of the __[ALAN Library v0.6.2]__ (Nov. 2007) archived copy hosted at the [ALAN Goodies] project, which itself included some minor tweaks by [Tristano Ajmone] to ensure compatibility with the ALAN Beta7, plus some aesthetic changes, all of which are thereof documented, along with the original [`ChangeLog`][ChangeLog] file.

The following changes were applied to the original library:

- The library is renamed to "ALAN Foundation Library".
- Main module `std.i` renamed to `Library.i`.
- Deleted original `README.md`/`ReadMe`.
- Deleted `index.txt`.
- Adapted `NOTES.md` and `INDEX.md` according to changes and new needs.
- Aesthetic changes to code formatting.
- Library comments were revised and freely edited:
    + Removed references to the old library and its changes.
    + Provided info according to the new project needs, instead.

The original library is here renamed from "Alan Library" to "ALAN Foundation Library" in order to avoid confusion between the two, and in view of the upcoming changes and updates to make use of the new ALAN&nbsp;3 features that were introduced since 2007.

The rationale in renaming the library is that many of the upcoming changes will break backward compatibility, meaning that old adventures built for the __ALAN Library v0.6.x__ won't work anymore with the new __ALAN Foundation Library__ by the time the latter has reached v1.0.0.

The __Foundation Library__ is not going to be just a series of updates to the old __ALAN Library v0.6.x__, but a full-fledged revisitation of its whole codebase, its driving design philosophy, and the way its modules are named and organized.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

[ALAN Goodies]: https://github.com/alan-if/alan-goodies "Visit the ALAN Goodies repository on GitHub"

[ALAN Library v0.6.2]: https://github.com/alan-if/alan-goodies/tree/master/libs/ALAN-Library_0.6 "View the original ALAN Library v0.6.2 at the ALAN Goodies repository"

[ChangeLog]: https://github.com/alan-if/alan-goodies/blob/master/libs/ALAN-Library_0.6/ChangeLog "View ALAN Library v0.6.2 ChangeLog at the ALAN Goodies project"

<!-- Issues & Discussion -->

[Discussion #14]: https://github.com/alan-if/alan-i18n/discussions/14 "Discussion #14 — Libraries Version Scheme"
[#34]: https://github.com/alan-if/alan-i18n/discussions/34 "Discussion #34 — On Scenery Objects"

<!-- project files and folders -->

[VERSIONING.adoc]: ../../VERSIONING.adoc "Read 'Library Version Scheme' documentation"

<!-- people and organizations -->

[Alan IF Development team]: https://github.com/alan-if "Visit the Alan Interactive Fiction Development team organization on GitHub"

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"

<!-- EOF -->
