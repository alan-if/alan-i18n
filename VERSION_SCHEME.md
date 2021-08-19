# Library Version Scheme

The __ALAN Foundation Library__ adopts __[Semantic Versioning 2.0.0]__ as its versioning scheme.

Each release is defined by a `MAJOR.MINOR.PATCH` triplet, consisting of three dot-separated numeric segments which are incremented in a meaningful way:

1. __MAJOR__ version indicates backwards compatibility breaking changes.
2. __MINOR__ version indicates new functionality that is backwards compatible.
3. __PATCH__ version indicates backwards compatible changes and bug fixes to the pre-existing code.

Basically, an author should be able to look at the version number of a new library release and determine whether its adoption in a pre-existing adventure requires code adjustments (MAJOR change), or if it's safe to adopt it without having to tweak the adventure code (MINOR and PATCH changes).

MINOR changes indicate that new library features are available, but their fruition (which is entirely optional) requires altering the original adventure code.

MAJOR changes always require tweaking an adventure code, for some parts of the library have undergone significant changes that need to be mirrored in adventures written for a previous library version.

PATCH changes usually deal with typos, bugs fixes, or other type of improvements that don't require altering the code of adventures.


> **WARNING!** — The Foundation Library is currently in Beta stage (`v0.X.Y`), so the above rules are not yet enforceable until `v1.0.0` is available.
> For the whole duration of the `v0.X.Y` cycle, MINOR version bumps should be interpreted as if they were MAJOR changes (i.e. backwards compatibility breaking), and PATCH bumps as being MINOR or PATCH changes (their distinction is not important during Beta work).
>
> This arrangement was decided upon in order to avoid introducing too many MAJOR version bumps in the new library, since in the early stages updating the library to exploit new ALAN features will entail many breaking changes, whereas after the `v1.0.0` stable release these should be more sporadic —  i.e. we wanted to prevent ending up having something like `Foundation Library v302.60.0`, which would look ridiculous.
>
> For more info on the topic, see/join [Discussion #14].

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Semantic Versioning 2.0.0]: https://semver.org "Semantic Versioning website"

<!-- Issues & Discussion -->

[Discussion #14]: https://github.com/alan-if/alan-i18n/discussions/14 "See Discussion #14 — Libraries Version Scheme"

<!-- EOF -->
