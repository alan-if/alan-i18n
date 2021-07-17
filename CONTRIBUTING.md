# Contributors' Guidlines

Summary


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Conventions](#conventions)
    - [Files Extensions](#files-extensions)
        - [ALAN Files](#alan-files)
    - [Locale Codes](#locale-codes)
    - [Code Styles Convention](#code-styles-convention)
        - [EditorConfig Validation via Travis CI](#editorconfig-validation-via-travis-ci)
        - [Validating Commits via EClint](#validating-commits-via-eclint)

<!-- /MarkdownTOC -->

-----

# Conventions

The following agreed upon conventions are important to ensure consistency across the project.

Most of these conventions are the same as those adopted in other ALAN related projects and repositories, and they are the result of the [ALAN IF Development team] collaborative editing experience, their learned lessons (and mistakes), and best practices discovered along the way.

Established conventions simplify working across different projects in a consistent way, and allow configuring editors and tools for working with ALAN projects anywhere.
When we adopt the same conventions, it's easier to work together in a smooth manner.

## Files Extensions

### ALAN Files

The configuration files for Git and [EditorConfig] cover the following Alan-specific files extensions:

|   ext   |                description                 |
|---------|--------------------------------------------|
| `.alan` | Alan source files.                         |
| `.i`    | Alan source modules.                       |
| `.a3s`  | Alan commands script (aka solution files). |
| `.a3t`  | Alan game transcripts.                     |

The `.a3s` and `.a3t` extension are the new official extensions adopted for command scripts and transcripts, respectively.

By default, the following Alan generated files will be excluded from the project:

|   ext   |           description           |
|---------|---------------------------------|
| `.a3c`  | Alan compiled adventures.       |
| `.ifid` | Source adventure IFID file.     |
| `.log`  | Compiler/ARun log files.        |
| `.sav`  | Saved games (used for testing). |


## Locale Codes

To structure and organize project directories and files, we use two-letter _locale codes_ to represent the various spoken languages, according to the [ISO 639-1:2002] standard.

Here are a few locale codes which are used in this project:

| language | code |
|----------|------|
| English  | `en` |
| French   | `fr` |
| German   | `de` |
| Spanish  | `es` |
| Swedish  | `sv` |

For the full list of ISO 639-1 language codes, see:

- https://github.com/datasets/language-codes/blob/master/data/language-codes.csv


## Code Styles Convention

This repository adopts [EditorConfig] to enforce consistent code styles in the repository contents and across different editors and IDEs:

- [`.editorconfig`][.editorconfig]

If you're using an [editor or IDE that natively supports EditorConfig], code styling should be handled auto-magically in the background.
If not, check if there's an [EditorConfig plug-in/package] for your editor/IDE that you can install.

### EditorConfig Validation via Travis CI

Each PR and commit is tested on GitHub for code styles consistency via Travis CI, using the [EClint] validator for [EditorConfig].

Travis CI validation is performed by the [`validate.sh`][validate.sh] script found in the repository root; you can run the script locally to check the integrity status of your repository folder (the script will check all files, including unstaged and ignored ones).

### Validating Commits via EClint

You're strongly advised to install [EClint] ([Node.js]) and our pre-commit [Git hook] to validate your changes for code consistency at commit time:

- [`git-hook-install.sh`][git-hook-install.sh] — installs the pre-commit hook.
- [`git-hook-remove.sh`][git-hook-remove.sh] — removes the pre-commit hook.

Once installed the pre-commit hook, every time you carry out a commit operation the staged files will be first checked via [EClint] to ensure that they meet the code styles settings in [`.editorconfig`][.editorconfig], and if they don't the commit will fail with an error listing the files that didn't pass the validation test.

> **NOTE** — You can always bypass the pre-commit hook via the `--no-verify` option, e.g.:
>
> ```
> git commit --no-verify
> ```

The advantage of using this hook instead of the [`validate.sh`][validate.sh] script is that the hook will test only the staged files involved in the actual commit, whereas the script will test _every_ file in the repository folder, including ignored and unstaged files, which is more time consuming and not focused on the specific commit changes.

The [`git-hook-install.sh`][git-hook-install.sh] script will create the following files inside the repository:

- `.git/hooks/pre-commit-validate.sh` — the commit validation script.
- `.git/hooks/pre-commit` — the pre-commit hook that launches the validation script.

You can uninstall the Git hook at any time, by executing:

- [`git-hook-remove.sh`][git-hook-remove.sh]

The hook installer and uninstaller scripts are designed to coexist with other pre-commit hooks you might have added to the repository, without disrupting them.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Git hook]: https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks "Learn more about Git hooks"

<!-- standards -->

[ISO 639-1:2002]: https://en.wikipedia.org/wiki/ISO_639-1 "Wikipedia » ISO 639-1"

<!-- tools and services -->

[EClint]: https://www.npmjs.com/package/eclint "EClint page at NPM"
[EditorConfig]: https://editorconfig.org "Learn more about EditorConfig on its official website"
[Node.js]: https://nodejs.org "Visit Node.js website"

[editor or IDE that natively supports EditorConfig]: https://editorconfig.org/#pre-installed "Check if your editor/IDE supports EditorConfig"
[EditorConfig plug-in/package]: https://editorconfig.org/#download "List of EditorConfig plug-ins for various editors and IDEs"

<!-- project files -->

[.editorconfig]: ./.editorconfig "View EditorConfig settings"
[git-hook-install.sh]: ./git-hook-install.sh "View Git hook installer script"
[git-hook-remove.sh]: ./git-hook-remove.sh "View Git hook uninstaller script"
[validate.sh]: ./validate.sh "View source script for code style validation"

<!-- repo links -->

[Issues]: https://github.com/alan-if/alan-i18n/issues "View the current repository Issues or submit a new Issue"
[Discussions]: https://github.com/alan-if/alan-i18n/discussions "Visit the Discussions area of ALAN i18n"

<!-- people and orgs -->

[ALAN IF Development team]: https://github.com/alan-if "View the ALAN IF Development team GitHub profile"

<!-- EOF -->
