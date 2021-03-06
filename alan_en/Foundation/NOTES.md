
# Usage Notes for "Library.i"


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [Three Steps to Using the Library](#three-steps-to-using-the-library)
- [Study the Library Files](#study-the-library-files)
- [Modify the Library Files When You Have To](#modify-the-library-files-when-you-have-to)
- [Equivalent Verbs](#equivalent-verbs)
- [Named Instances](#named-instances)
- [Inventory and Container Capacity Limits](#inventory-and-container-capacity-limits)
- [Scenery Objects](#scenery-objects)

<!-- /MarkdownTOC -->

-----


# Three Steps to Using the Library

1. Store all the "[Library.i]" library files in a subdirectory or file folder separate from your game's files

2. Add an `include` statement for the main "[Library.i]" file at the top of your game's main sourcecode file.
("[Library.i]" contains include statements for all the rest of the library ".i" files so they're automatically added to your game.)

    An example showing the start of your game sourcecode file might be

    ``` alan
    -- "My Game" by Fred Smart

    -- add the code from the Library.i library to this game
    Include 'Library.i'

    -- beginning of your game's actual code
    The abc Isa location
       ... etc. etc. ...
    ```



3. Compile your game with an `include` parameter for the subdirectory or file folder where you stored the Library.i library files. Eg:

    ```
    alan   -include c:\alan\Foundation   mygame.alan
    ```


# Study the Library Files

The documentation for the Library.i library consists of:

  * the "[ReadMe]" file,
  * the "[INDEX.md]" file,
  * this "[NOTES.md]" file.

The secret to using "[Library.i]" is to study the actual library files — the ".i"files — as the documentation about the library is scanty the best way to learn how things should be defined in your own code is to check how the relevant verbs etc. are defined in the library itself.

Use the "[INDEX.md]" file to find which ".i" files contain the attributes or verbs or whatever that you wish to investigate.

For example, perhaps you have an object that you want to be able to talk. You note while play-testing that only actors can talk in games using the "Library.i" library but you don't want to make your object an actor because, other than being a talkative object, it is otherwise more convenient to code it as an object.
So you look through the "[INDEX.md]" file and find that `not can_talk` is a default attribute defined in the "[talk.i]" file.
So you look in the "[talk.i]" file and find by viewing the source code for the talk verbs that if an individual object is given the `can_talk` attribute then all the talk/ask/etc verbs will now work for that object.
Ah ha! So you add the line `IS can_talk.` to your object's definition and, hey presto, your problem is solved.


# Modify the Library Files When You Have To

Keep the library ".i" files in their own subdirectory or file folder. If you find you need to modify the contents of a ".i" file (as you probably will because most games will have some unique characteristic or another that's not catered for by the standard library behaviour) use a *copy* of that ".i"file stored in your game's sourcecode directory.
(See the [ReadMe] file for a fuller explanation of why you should do this.)

Don't hesitate to modify the ".i" files to meet your requirements.
(But do modify a copy, not the original file — keep the originals for reference.)

For example, one ".i" file which you'll almost certainly want to modify is the "[meta_help.i]" file.
It contains a very basic and generic `help` verb and a `credits` verb which states 'The author retains copyright of this game.'
At the very least you'd probably want to modify that to something like '"Game Title" by My Name (C) 20xx.' plus a statement of your distribution policy — shareware, freeware, "don't redistribute this" or whatever.
So to change the "meta_help.i" file take a copy the original file from the library's subdirectory into your game's subdirectory and then edit that copy of "meta_help.i" to make the help and credits verbs display the text you want them to.

If you find bugs or stupid things in the library or you have ideas to expand or improve it, let the library maintainer know.
The library is in the early stages of development so there is certain to be many areas requiring improvement.



# Equivalent Verbs

Note that some verbs have different syntaxes but do the same thing (eg: "look at thing", "examine thing".)
Such verbs should be listed together in `DOES` statements in your game sourcecode so that the player can use any of the different syntaxes.

Eg:

``` alan
The rock Isa object At somewhere
  Description "etc etc"

  Verb examine, look_at, search
    Does
      "Its a pretty dull rock, actually"
  End Verb.
End The rock.
```

The most important of these groups of different-but-equivalent verbs are:

|             |                                                       |
|-------------|-------------------------------------------------------|
| [examine.i] | `VERB examine, look_at, search`                       |
| [take.i]    | `VERB take, pick_up1, pick_up2`                       |
| [take.i]    | `VERB drop, put_down1, put_down2`                     |
| [turn.i]    | `VERB turn_on1, turn_on2, switch_on1, switch_on2`     |
| [turn.i]    | `VERB turn_off1, turn_off2, switch_off1, switch_off2` |


Note that you may not always want to have these equivalent verbs defined the same as each other.
For example, you might prefer 'search object' to have different results to 'examine object' and 'look at object'in particular circumstances or perhaps throughout the whole game.


# Named Instances

Instances that have "proper" names, such as actors with names (mr Andersson) will have to be handled specially since the default is to put an article (definite or indefinite) before printing the instance.
The way to handle these are to use the predefined class `named_actor` which specifies that these articles should be emtpy

Eg:

> x fred

should return a phrase with Fred's name with a capital first letter

> You see nothing unusual about Fred.

whereas

> x driver

should return a phrase with a 'the' added

> You see nothing unusual about the driver.

For the first case make Fred a `named_actor`.

If you want an object to have a capitalized name you must define its name as a quoted identifier. Eg:

``` alan
The robot Isa object At spaceship Name 'Floyd' ...
```

The player will still be able to refer to it since it is converted to lower case before entered into the dictionary of player words.


# Inventory and Container Capacity Limits

All objects and actors have a default `weight` of 5 and of 50 respectively.
I think of the default object weight of '5' being about equivalent to that of a book.
You can give objects and actors different weights to reflect their 'real world' sizes to ensure they are or aren't easy to pick up or to put in containers of various sizes.

The default capacity limits for carrying and wearing are ten items and a maximum total weight of 50.
You can tweek these limits in the "[invent.i]" file to meet the requirements for your game.

If you have container objects in your game you should give them capacity limits appropriate to their sizes — eg: a chocolate box might require a weight limit of 4 so that even objects of the default size can't be put in it. Eg:

``` alan
The cbox Isa object Name Chocolate Box At somewhere
  Is
    Not closed.
    closeable.

  With Container
    Limits
    Count 10 Else
      "You can't put anything more in there."
    weight 4 Else
      "You cannot fit that item in there."

  Description
    "etc etc....
```



# Scenery Objects

By default objects have several attributes that allow the player to manipulate the object in various ways.
For some objects at a location these verbs (eg 'push obj', etc) may not make any sense.
So, for example, make distant but examinable objects not takeable, pushable, touchable, or searchable.
This is actually already defined in the class `scenery`. Eg:

``` alan
The mountains Isa scenery At somewhere

  Description
    "From here you can see a range of rugged
     snow-capped mountains to the west."

  Verb examine
    Does Only
      Describe mountains.
  End Verb.

End The mountains.
```

The mountains will then be:

``` alan
  Is
    Not searchable.
    Not takeable.
    Not pushable.
    Not touchable.
```


----------------------------

Stephen Griffiths (<sg@xtra.co.nz>), June 2002.

Updated by Thomas Nilsson, Jan 2004.

Converted to markdown by Tristano Ajmone, April 2019.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[NOTES.md]: ./NOTES.md
[ReadMe]: https://github.com/alan-if/alan-goodies/blob/master/libs/ALAN-Library_0.6/README.md#original-readme "View archived copy of original 'ReadMe' at ALAN Goodies"
[INDEX.md]: ./INDEX.md

[examine.i]: ./examine.i "View source file"
[meta_help.i]: ./meta_help.i "View source file"
[invent.i]: ./invent.i "View source file"
[Library.i]: ./Library.i "View source file"
[take.i]: ./take.i "View source file"
[talk.i]: ./talk.i "View source file"
[turn.i]: ./turn.i "View source file"

<!-- EOF -->
