# Library Resources

This folder contains some useful assets for developers wishing to port the Starter Library to a new locale, or authors wishing to tailor their adventures to their own needs.

# Library Templates

## Runtime Messages

- [`messages_en.i`][messages_en.i] — English messages template.
- [`messages_sv.i`][messages_sv.i] — Swedish messages template.
- [`messages_de.i`][messages_de.i] — German messages template.

The templates contain all the built-in ALAN runtime messages with their default definitions for the English, Swedish or German locale.

A template is going to be very useful if you need to translate the Starter Library to a new locale, since you'll need to override every default `MESSAGE` with the appropriate translation.
In this case, you might want to copy the whole file into your StartLib folder, as a module of the library, and adapt it to needs.

> **IMPORTANT** — Some library modules already redefine a few `MESSAGE`s; so you'll need to keep an eye for duplicate definitions, in case you decide to integrate one of these templates.

You can also a template as a reference to customize the text of specific responses; in this case you'll probably use it to copy a few messages and paste them in your adventure code.

For a detailed explanation of each `MESSAGE` usage context, and its parameters, see [Appendix C.1][§C.1] of _[The ALAN Manual]_.

Remember that `MESSAGE` definitions are not limited to simple strings.
You can provide dynamic messages by including actual code in their definitions, as described in [§3.15] of _[The ALAN Manual]_.

> **TIP** — You can find the default `MESSAGE` definitions in the [`compiler/msg.c`][msg.c] file of the ALAN source code.
> The first comment line in the `messages_??.i` templates contains the date and commit hash of the `compiler/msg.c` revision against which those strings were last compared:
>
>     -- "messages_en.i" | 2021/08/17 | 6d7ede7f37e97d63c8db5a3d2a1374 | ALAN 3.0beta7


-------------------------------------------------------------------------------

# Reference Links

- _[The ALAN Manual]_:
    + [§3.15. MESSAGEs][§3.15]
    + [App. C.1. Input Response Messages][§C.1]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- ALAN Manual -->

[The ALAN Manual]: https://alan-if.github.io/alan-docs/manual-beta/manual.html "Read The ALAN Manual online"
[§3.15]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#_messages
[§C.1]: https://alan-if.github.io/alan-docs/manual-beta/manual.html#_input_response_messages

<!-- ALAN sources -->

[msg.c]: https://github.com/alan-if/alan/blob/master/compiler/msg.c

<!-- project files -->

[messages_de.i]: ./messages_de.i "View German ALAN messages template"
[messages_en.i]: ./messages_en.i "View English ALAN messages template"
[messages_sv.i]: ./messages_sv.i "View Swedish ALAN messages template"

<!-- EOF -->
