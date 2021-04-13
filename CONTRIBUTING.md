# Contributors' Guidlines

Summary


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Conventions](#conventions)
    - [Files Extensions](#files-extensions)
    - [EditorConfig Settings](#editorconfig-settings)

<!-- /MarkdownTOC -->

-----

# Conventions

## Files Extensions

The configuration files for Git and EditorConfig cover the following Alan-specific files extensions:

|   ext    |                description                 |
|----------|--------------------------------------------|
| `.alan`  | Alan source files.                         |
| `.i`     | Alan source modules.                       |
| `.a3sol` | Alan commands script (aka solution files). |
| `.a3log` | Alan game transcripts.                     |

By default, the following Alan generated files will be excluded from the project:

|   ext   |           description           |
|---------|---------------------------------|
| `.a3c`  | Alan compiled adventures.       |
| `.ifid` | Source adventure IFID file.     |
| `.log`  | Compiler/ARun log files.        |
| `.sav`  | Saved games (used for testing). |


## EditorConfig Settings

- [`.editorconfig`](./.editorconfig)

The template contains [EditorConfig] settings for Alan files designed to offer support across multiple editors and IDEs, as well as to provide optimal source code previews on GitHub.

The [EditorConfig] file format is an application-agnostic standard for defining consistent coding style conventions for multiple developers working on the same project across various editors and IDEs. A growing number of editors and IDEs support EditorConfig out of the box, and numerous plug-ins and extensions are available for editors that don't.

One of the main benefits of the EditorConfig settings is the ability to enforce ISO-8859-1 encoding on Alan files (`*.alan`, `*.i`, `*.a3sol`, `*.a3log`) and prevent accidental UTF-8 file-corruption from copy-&-paste operations. Most editors that support [EditorConfig] should be able to enforce ISO-8859-1 strictness on Alan sources via the `.editorconfig` file.

As of Jun 2015, [GitHub natively supports EditorConfig] files within repositories. The `.editorconfig` file in this template will improve Alan sources visualization on GitHub. Although GitHub doesn't recognize Alan source files natively, it will honour the EditorConfig settings of this template.

[EditorConfig]: https://editorconfig.org/ "Visit the EditorConfig project website"
[Github natively supports EditorConfig]: https://github.com/editorconfig/editorconfig.github.com/pull/48



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>



<!-- EOF -->
