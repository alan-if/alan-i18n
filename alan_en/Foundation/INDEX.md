
# ALAN Foundation Library Index

Version 0.2.1 (2021/09/10).


There are two indices here.
Each is divided into categories (attributes, syntax, verbs etc.).
The first index sorts each category in alphabetical order, the second in the order of the file they are defined in.

The purpose of this index is to act as a roadmap to the library showing you at a glance what is defined in the library and where to go to find out details about each definition.

Please read the [README] and [NOTES] files for information about using the library.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3,4" -->

- [Alphabetical order:](#alphabetical-order)
    - [ACTOR](#actor)
    - [LOCATION](#location)
    - [DEFAULT ATTRIBUTES](#default-attributes)
    - [OBJECT ATTRIBUTES](#object-attributes)
    - [ACTOR ATTRIBUTES](#actor-attributes)
    - [SYNONYMS](#synonyms)
    - [SYNTAX](#syntax)
- [File order:](#file-order)
    - [DEFAULT ATTRIBUTES](#default-attributes-1)
    - [OBJECT ATTRIBUTES](#object-attributes-1)
    - [ACTOR ATTRIBUTES](#actor-attributes-1)
    - [SYNONYMS](#synonyms-1)
    - [SYNTAX](#syntax-1)
    - [ACTOR](#actor-1)
    - [LOCATION](#location-1)

<!-- /MarkdownTOC -->

-----


# Alphabetical order:

## ACTOR

|  ACTOR   |            |
|----------|------------|
| `hero`   | [global.i] |
| `nobody` | [people.i] |


## LOCATION

|  LOCATION |             |
|-----------|-------------|
| `nowhere` | [nowhere.i] |
| `temp`    | [temp.i]    |

## DEFAULT ATTRIBUTES

| DEFAULT ATTRIBUTES |             |
|--------------------|-------------|
| `NOT can_talk`     | [talk.i]    |
| `examinable`       | [examine.i] |
| `InAnimate`        | [take.i]    |
| `NOT named`        | [global.i]  |
| `NOT plural`       | [global.i]  |
| `pushable`         | [push.i]    |
| `searchable`       | [examine.i] |
| `NOT shootable`    | [attack.i]  |
| `touchable`        | [touch.i]   |
| `xDesc ""`         | [examine.i] |
| `weight 5`         | [invent.i]  |

## OBJECT ATTRIBUTES

|  OBJECT ATTRIBUTES  |            |
|---------------------|------------|
| `NOT closeable`     | [open.i]   |
| `closed`            | [open.i]   |
| `NOT drinkable`     | [eat.i]    |
| `NOT edible`        | [eat.i]    |
| `NOT lockable`      | [lock.i]   |
| `locked`            | [lock.i]   |
| `NOT on`            | [turn.i]   |
| `NOT readable`      | [read.i]   |
| `NOT switchable`    | [turn.i]   |
| `takeable`          | [take.i]   |
| `NOT weapon`        | [attack.i] |
| `NOT wearable`      | [wear.i]   |
| `HAS wearer nobody` | [wear.i]   |
| `NOT worn`          | [wear.i]   |


## ACTOR ATTRIBUTES

| ACTOR ATTRIBUTES |             |
|------------------|-------------|
| `can_talk`       | [talk.i]    |
| `NOT InAnimate`  | [take.i]    |
| `named`          | [global.i]  |
| `NOT searchable` | [examine.i] |
| `weight 50`      | [invent.i]  |

## SYNONYMS

|       SYNONYMS       |                  |
|----------------------|------------------|
| `author = credits`   | [meta_help]      |
| `carry  = take`      | [take.i]         |
| `cast = throw`       | [throw.i]        |
| `'check' = examine`  | [examine.i]      |
| `confiscate = take`  | [take.i]         |
| `d = down`           | [nowhere.i]      |
| `discard = drop`     | [take.i]         |
| `dump = throw`       | [throw.i]        |
| `e = east`           | [nowhere.i]      |
| `fight = attack`     | [attack.i]       |
| `fire = shoot`       | [attack.i]       |
| `g = again`          | [meta_session.i] |
| `get    = take`      | [take.i]         |
| `grab  = take`       | [take.i]         |
| `h = help`           | [meta_help]      |
| `her = it`           | [global.i]       |
| `him = it`           | [global.i]       |
| `hints = hint`       | [meta_help]      |
| `hit = attack`       | [attack.i]       |
| `hold = take`        | [take.i]         |
| `i = invent`         | [invent.i]       |
| `inside = in`        | [examine.i]      |
| `into = in`          | [examine.i]      |
| `info  = credits`    | [meta_help]      |
| `inspect = examine`  | [examine.i]      |
| `inventory = invent` | [invent.i]       |
| `kill = attack`      | [attack.i]       |
| `l = 'look'`         | [look.i]         |
| `me=hero`            | [global.i]       |
| `myself=hero`        | [global.i]       |
| `n = north`          | [nowhere.i]      |
| `ne = northeast`     | [nowhere.i]      |
| `notes = credits`    | [meta_help]      |
| `nw = northwest`     | [nowhere.i]      |
| `obtain = take`      | [take.i]         |
| `place = put`        | [put.i]          |
| `s = south`          | [nowhere.i]      |
| `scream = shout`     | [talk.i]         |
| `se = southeast`     | [nowhere.i]      |
| `self=hero`          | [global.i]       |
| `shut = close`       | [open.i]         |
| `steal = take`       | [take.i]         |
| `sw = southwest`     | [nowhere.i]      |
| `u = up`             | [nowhere.i]      |
| `w = west`           | [nowhere.i]      |
| `x = examine`        | [examine.i]      |
| `yell = shout`       | [talk.i]         |
| `z = wait`           | [wait.i]         |


## SYNTAX

|                    SYNTAX                   |                  |
|---------------------------------------------|------------------|
| `again = again`                             | [meta_session.i] |
| `ask = ask (act) about (obj)!`              | [talk.i]         |
| `attack = attack (act)`                     | [attack.i]       |
| `attack_with = attack (act) 'with' (obj)`   | [attack.i]       |
| `brief = brief`                             | [meta_brief.i]   |
| `close = close (obj)`                       | [open.i]         |
| `close_with = close (obj1) 'with' (obj2)`   | [open.i]         |
| `credits = credits`                         | [meta_help]      |
| `down`                                      | [nowhere.i]      |
| `drink = drink (obj)`                       | [eat.i]          |
| `drop = drop (obj) *`                       | [take.i]         |
| `east`                                      | [nowhere.i]      |
| `eat = eat (obj)`                           | [eat.i]          |
| `examine = examine (obj) *`                 | [examine.i]      |
| `give = 'give' (obj) 'to' (recip)`          | [give.i]         |
| `help = help`                               | [meta_help]      |
| `hint = hint`                               | [meta_help]      |
| `invent = invent`                           | [invent.i]       |
| `jump_on = jump 'on' (obj)`                 | [jump.i]         |
| `jump = jump`                               | [jump.i]         |
| `kiss = kiss (obj)`                         | [kiss.i]         |
| `knock_on = knock 'on' (obj)`               | [knock.i]        |
| `knock = knock`                             | [knock.i]        |
| `listen_to = listen 'to' (obj)`             | [listen.i]       |
| `listen = listen`                           | [listen.i]       |
| `lock = lock (obj)`                         | [lock.i]         |
| `lock_with = lock (obj) with (key)`         | [lock.i]         |
| `'look' = 'look'`                           | [look.i]         |
| `look_at = 'look' 'at' (obj) *`             | [examine.i]      |
| `look_in = 'look' 'in' (obj)`               | [examine.i]      |
| `north`                                     | [nowhere.i]      |
| `northeast`                                 | [nowhere.i]      |
| `northwest`                                 | [nowhere.i]      |
| `open = open (obj)`                         | [open.i]         |
| `open_with = open (obj1) 'with' (obj2)`     | [open.i]         |
| `pick_up1 = pick up (obj)*`                 | [take.i]         |
| `pick_up2 = pick (obj)* up`                 | [take.i]         |
| `push = push (obj)`                         | [push.i]         |
| `push_with = push (obj1) 'with' (obj2)`     | [push.i]         |
| `put = put (obj) *`                         | [put.i]          |
| `put_behind = put (obj1) behind (obj2)`     | [put.i]          |
| `put_down1 = put (obj) * down`              | [take.i]         |
| `put_down2 = put down (obj) *`              | [take.i]         |
| `put_in = put (obj1) 'in' (obj2)`           | [put.i]          |
| `put_near = put (obj1) near (obj2)`         | [put.i]          |
| `put_on = put (obj1) 'on' (obj2)`           | [put.i]          |
| `put_o_on = put (obj) on`                   | [wear.i]         |
| `put_on_o = put on (obj)`                   | [wear.i]         |
| `put_under = put (obj1) under (obj2)`       | [put.i]          |
| `q = q`                                     | [meta_session.i] |
| `quit = quit`                               | [meta_session.i] |
| `read = read (obj)`                         | [read.i]         |
| `remove = remove (obj)`                     | [wear.i]         |
| `restart = restart`                         | [meta_session.i] |
| `restore = restore`                         | [meta_session.i] |
| `save = save`                               | [meta_session.i] |
| `say_to = 'say' (obj)! 'to' (act)`          | [talk.i]         |
| `say_word = 'say' (obj)!`                   | [talk.i]         |
| `search = search (obj)`                     | [examine.i]      |
| `'score' = 'score'`                         | [meta_session.i] |
| `shoot = shoot (obj)`                       | [attack.i]       |
| `shoot_at0 = shoot 'at' (obj)`              | [attack.i]       |
| `shoot_at = shoot (obj) 'at' (act)`         | [attack.i]       |
| `shoot_with = shoot (act) 'with' (obj)`     | [attack.i]       |
| `shout = shout`                             | [talk.i]         |
| `smell0 = smell`                            | [smell.i]        |
| `smell = smell (obj)`                       | [smell.i]        |
| `south`                                     | [nowhere.i]      |
| `southeast`                                 | [nowhere.i]      |
| `southwest`                                 | [nowhere.i]      |
| `switch_off1 = switch off (obj)`            | [turn.i]         |
| `switch_off2 = switch (obj) off`            | [turn.i]         |
| `switch_on1 = switch on (obj)`              | [turn.i]         |
| `switch_on2 = switch (obj) on`              | [turn.i]         |
| `take = take (obj) *`                       | [take.i]         |
| `take_from = 'take' (obj) 'from' (holder)`  | [take.i]         |
| `take_o_off = take (obj) off`               | [wear.i]         |
| `take_off_o = take off (obj)`               | [wear.i]         |
| `talk_about = talk 'to' (act) about (obj)!` | [talk.i]         |
| `talk_to = talk 'to' (act)`                 | [talk.i]         |
| `tell = tell (act) about (obj)!`            | [talk.i]         |
| `throw = throw (obj) *`                     | [throw.i]        |
| `throw_at = throw (obj1) 'at' (obj2)`       | [throw.i]        |
| `throw_in = throw (obj1) 'in' (obj2)`       | [throw.i]        |
| `throw_to = throw (obj1) 'to' (obj2)`       | [throw.i]        |
| `touch = touch (obj)`                       | [touch.i]        |
| `touch_with = touch (obj1) 'with' (obj2)`   | [touch.i]        |
| `turn_off1 = turn off (obj)`                | [turn.i]         |
| `turn_off2 = turn (obj) off`                | [turn.i]         |
| `turn_on1 = turn on (obj)`                  | [turn.i]         |
| `turn_on2 = turn (obj) on`                  | [turn.i]         |
| `undo = undo`                               | [meta_session.i] |
| `undress = undress`                         | [wear.i]         |
| `unlock = unlock (obj)`                     | [lock.i]         |
| `unlock_with = unlock (obj) with (key)`     | [lock.i]         |
| `up`                                        | [nowhere.i]      |
| `verbose = verbose`                         | [meta_brief.i]   |
| `wait = wait`                               | [wait.i]         |
| `wear = wear (obj)`                         | [wear.i]         |
| `west`                                      | [nowhere.i]      |



# File order:

## DEFAULT ATTRIBUTES

| DEFAULT ATTRIBUTES |             |
|--------------------|-------------|
| `NOT shootable`    | [attack.i]  |
| `examinable`       | [examine.i] |
| `searchable`       | [examine.i] |
| `xDesc ""`         | [examine.i] |
| `NOT named`        | [global.i]  |
| `NOT plural`       | [global.i]  |
| `pushable`         | [push.i]    |
| `InAnimate`        | [take.i]    |
| `NOT can_talk`     | [talk.i]    |
| `touchable`        | [touch.i]   |


## OBJECT ATTRIBUTES

|  OBJECT ATTRIBUTES  |            |
|---------------------|------------|
| `NOT weapon`        | [attack.i] |
| `NOT edible`        | [eat.i]    |
| `NOT drinkable`     | [eat.i]    |
| `NOT lockable`      | [lock.i]   |
| `locked`            | [lock.i]   |
| `NOT closeable`     | [open.i]   |
| `closed`            | [open.i]   |
| `NOT readable`      | [read.i]   |
| `takeable`          | [take.i]   |
| `NOT on`            | [turn.i]   |
| `NOT switchable`    | [turn.i]   |
| `NOT wearable`      | [wear.i]   |
| `HAS wearer nobody` | [wear.i]   |
| `NOT worn`          | [wear.i]   |


## ACTOR ATTRIBUTES

| ACTOR ATTRIBUTES |             |
|------------------|-------------|
| `named`          | [global.i]  |
| `NOT InAnimate`  | [take.i]    |
| `can_talk`       | [talk.i]    |
| `searchable`     | [examine.i] |


## SYNONYMS

|                          SYNONYMS                          |                  |
|------------------------------------------------------------|------------------|
| `kill, fight, hit = attack`                                | [attack.i]       |
| `fire = shoot`                                             | [attack.i]       |
| `inside, into = in`                                        | [examine.i]      |
| `x, inspect, check = examine`                              | [examine.i]      |
| `me, myself, self = hero`                                  | [global.i]       |
| `her, him = it`                                            | [global.i]       |
| `i, inventory = invent`                                    | [invent.i]       |
| `l = 'look'`                                               | [look.i]         |
| `h = help`                                                 | [meta_help]      |
| `hints = hint`                                             | [meta_help]      |
| `info, notes, author = credits`                            | [meta_help]      |
| `g = again`                                                | [meta_session.i] |
| `n = north`                                                | [nowhere.i]      |
| `s = south`                                                | [nowhere.i]      |
| `e = east`                                                 | [nowhere.i]      |
| `w = west`                                                 | [nowhere.i]      |
| `ne = northeast`                                           | [nowhere.i]      |
| `se = southeast`                                           | [nowhere.i]      |
| `nw = northwest`                                           | [nowhere.i]      |
| `sw = southwest`                                           | [nowhere.i]      |
| `u = up`                                                   | [nowhere.i]      |
| `d = down`                                                 | [nowhere.i]      |
| `shut = close`                                             | [open.i]         |
| `place = put`                                              | [put.i]          |
| `get, carry, obtain, grab, steal, confiscate, hold = take` | [take.i]         |
| `discard = drop`                                           | [take.i]         |
| `yell = shout`                                             | [talk.i]         |
| `scream = shout`                                           | [talk.i]         |
| `dump, cast = throw`                                       | [throw.i]        |
| `z = wait`                                                 | [wait.i]         |


## SYNTAX

|                    SYNTAX                   |                  |
|---------------------------------------------|------------------|
| `attack = attack (act)`                     | [attack.i]       |
| `attack_with = attack (act) 'with' (obj)`   | [attack.i]       |
| `shoot = shoot (obj)`                       | [attack.i]       |
| `shoot_at0 = shoot 'at' (obj)`              | [attack.i]       |
| `shoot_at = shoot (obj) 'at' (act)`         | [attack.i]       |
| `shoot_with = shoot (act) 'with' (obj)`     | [attack.i]       |
| `eat = eat (obj)`                           | [eat.i]          |
| `drink = drink (obj)`                       | [eat.i]          |
| `examine = examine (obj) *`                 | [examine.i]      |
| `look_at = 'look' 'at' (obj) *`             | [examine.i]      |
| `look_in = 'look' 'in' (obj)`               | [examine.i]      |
| `search = search (obj)`                     | [examine.i]      |
| `give = 'give' (obj) 'to' (recip)`          | [give.i]         |
| `invent = invent`                           | [invent.i]       |
| `jump_on = jump 'on' (obj)`                 | [jump.i]         |
| `jump = jump`                               | [jump.i]         |
| `kiss = kiss (obj)`                         | [kiss.i]         |
| `knock_on = knock 'on' (obj)`               | [knock.i]        |
| `knock = knock`                             | [knock.i]        |
| `listen_to = listen 'to' (obj)`             | [listen.i]       |
| `listen = listen`                           | [listen.i]       |
| `lock = lock (obj)`                         | [lock.i]         |
| `lock_with = lock (obj) with (key)`         | [lock.i]         |
| `unlock = unlock (obj)`                     | [lock.i]         |
| `unlock_with = unlock (obj) with (key)`     | [lock.i]         |
| `'look' = 'look'`                           | [look.i]         |
| `brief = brief`                             | [meta_brief.i]   |
| `verbose = verbose`                         | [meta_brief.i]   |
| `help = help`                               | [meta_help]      |
| `hint = hint`                               | [meta_help]      |
| `credits = credits`                         | [meta_help]      |
| `save = save`                               | [meta_session.i] |
| `q = q`                                     | [meta_session.i] |
| `quit = quit`                               | [meta_session.i] |
| `restore = restore`                         | [meta_session.i] |
| `restart = restart`                         | [meta_session.i] |
| `'score' = 'score'`                         | [meta_session.i] |
| `again = again`                             | [meta_session.i] |
| `undo = undo`                               | [meta_session.i] |
| `n = north`                                 | [nowhere.i]      |
| `s = south`                                 | [nowhere.i]      |
| `e = east`                                  | [nowhere.i]      |
| `w = west`                                  | [nowhere.i]      |
| `ne = northeast`                            | [nowhere.i]      |
| `se = southeast`                            | [nowhere.i]      |
| `nw = northwest`                            | [nowhere.i]      |
| `sw = southwest`                            | [nowhere.i]      |
| `u = up`                                    | [nowhere.i]      |
| `d = down`                                  | [nowhere.i]      |
| `open = open (obj)`                         | [open.i]         |
| `open_with = open (obj1) 'with' (obj2)`     | [open.i]         |
| `close = close (obj)`                       | [open.i]         |
| `close_with = close (obj1) 'with' (obj2)`   | [open.i]         |
| `push = push (obj)`                         | [push.i]         |
| `push_with = push (obj1) 'with' (obj2)`     | [push.i]         |
| `put = put (obj) *`                         | [put.i]          |
| `put_in = put (obj1) 'in' (obj2)`           | [put.i]          |
| `put_near = put (obj1) near (obj2)`         | [put.i]          |
| `put_behind = put (obj1) behind (obj2)`     | [put.i]          |
| `put_on = put (obj1) 'on' (obj2)`           | [put.i]          |
| `put_under = put (obj1) under (obj2)`       | [put.i]          |
| `read = read (obj)`                         | [read.i]         |
| `smell0 = smell`                            | [smell.i]        |
| `smell = smell (obj)`                       | [smell.i]        |
| `take = take (obj) *`                       | [take.i]         |
| `pick_up1 = pick up (obj)*`                 | [take.i]         |
| `pick_up2 = pick (obj)* up`                 | [take.i]         |
| `drop = drop (obj) *`                       | [take.i]         |
| `put_down1 = put (obj) * down`              | [take.i]         |
| `put_down2 = put down (obj) *`              | [take.i]         |
| `take_from = 'take' (obj) 'from' (holder)`  | [take.i]         |
| `shout = shout`                             | [talk.i]         |
| `say_word = 'say' (obj)!`                   | [talk.i]         |
| `say_to = 'say' (obj)! 'to' (act)`          | [talk.i]         |
| `ask = ask (act) about (obj)!`              | [talk.i]         |
| `talk_about = talk 'to' (act) about (obj)!` | [talk.i]         |
| `talk_to = talk 'to' (act)`                 | [talk.i]         |
| `tell = tell (act) about (obj)!`            | [talk.i]         |
| `throw = throw (obj) *`                     | [throw.i]        |
| `throw_at = throw (obj1) 'at' (obj2)`       | [throw.i]        |
| `throw_to = throw (obj1) 'to' (obj2)`       | [throw.i]        |
| `throw_in = throw (obj1) 'in' (obj2)`       | [throw.i]        |
| `touch = touch (obj)`                       | [touch.i]        |
| `touch_with = touch (obj1) 'with' (obj2)`   | [touch.i]        |
| `turn_on1 = turn on (obj)`                  | [turn.i]         |
| `turn_on2 = turn (obj) on`                  | [turn.i]         |
| `switch_on1 = switch on (obj)`              | [turn.i]         |
| `switch_on2 = switch (obj) on`              | [turn.i]         |
| `turn_off1 = turn off (obj)`                | [turn.i]         |
| `turn_off2 = turn (obj) off`                | [turn.i]         |
| `switch_off1 = switch off (obj)`            | [turn.i]         |
| `switch_off2 = switch (obj) off`            | [turn.i]         |
| `wait = wait`                               | [wait.i]         |
| `put_o_on = put (obj) on`                   | [wear.i]         |
| `put_on_o = put on (obj)`                   | [wear.i]         |
| `remove = remove (obj)`                     | [wear.i]         |
| `take_o_off = take (obj) off`               | [wear.i]         |
| `take_off_o = take off (obj)`               | [wear.i]         |
| `undress = undress`                         | [wear.i]         |
| `wear = wear (obj)`                         | [wear.i]         |


## ACTOR

|  ACTOR   |            |
|----------|------------|
| `hero`   | [global.i] |
| `nobody` | [people.i] |


## LOCATION

|  LOCATION |             |
|-----------|-------------|
| `nowhere` | [nowhere.i] |
| `temp`    | [temp.i]    |

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[README]: https://github.com/alan-if/alan-goodies/blob/master/libs/ALAN-Library_0.6/README.md#original-readme "View archived copy of original 'ReadMe' at ALAN Goodies"
[NOTES]: ./NOTES.md

<!-- Lib modules -->

[attack.i]: ./attack.i "View source file"
[eat.i]: ./eat.i "View source file"
[examine.i]: ./examine.i "View source file"
[give.i]: ./give.i "View source file"
[global.i]: ./global.i "View source file"
[hero.i]: ./hero.i "View source file"
[invent.i]: ./invent.i "View source file"
[jump.i]: ./jump.i "View source file"
[kiss.i]: ./kiss.i "View source file"
[knock.i]: ./knock.i "View source file"
[listen.i]: ./listen.i "View source file"
[lock.i]: ./lock.i "View source file"
[look.i]: ./look.i "View source file"
[meta_brief.i]: ./meta_brief.i "View source file"
[meta_help]: ./meta_help "View source file"
[meta_session.i]: ./meta_session.i "View source file"
[nowhere.i]: ./nowhere.i "View source file"
[open.i]: ./open.i "View source file"
[people.i]: ./people.i "View source file"
[push.i]: ./push.i "View source file"
[put.i]: ./put.i "View source file"
[read.i]: ./read.i "View source file"
[scenery.i]: ./scenery.i "View source file"
[smell.i]: ./smell.i "View source file"
[Library.i]: ./Library.i "View source file"
[take.i]: ./take.i "View source file"
[talk.i]: ./talk.i "View source file"
[temp.i]: ./temp.i "View source file"
[throw.i]: ./throw.i "View source file"
[touch.i]: ./touch.i "View source file"
[turn.i]: ./turn.i "View source file"
[wait.i]: ./wait.i "View source file"
[wear.i]: ./wear.i "View source file"


<!-- EOF -->
