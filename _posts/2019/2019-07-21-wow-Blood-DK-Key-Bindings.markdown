---
layout: post
title: 'WoW: Blood Death Knight (DK) Key Bindings 8.2'
date: '2019-07-21T15:38:00.000-05:00'
author: Wuphon's Reach
category:
- WorldOfWarcraft
tags:
- WorldOfWarcraft
- WoWDeathKnight

---

One of the hard bits about leveling up is figuring out where all your spells will be at maximimum level.  That's important so that your muscle-memory is in place when dungeons/raids make it hard.

These are the key-bindings that I've come up with over the past few months.

**Table of Contents**

- [Basics](#Basics)
- [Key-bindings](#Key-bindings)
- [Macros](#Macros)
  - [Blood E](#Blood-E)
  - [Blood F](#Blood-F)
  - [Blood X](#Blood-X)
  - [Blood Z](#Blood-Z)

## Basics

You should free up the following keys for use with abilities, both the "regular" (unmodified) key as well as the "shift" variant (e.g. "Shift+2" or "Shift+F").  This may result in a bit of short-term pain, but will result in having more keys at your disposal for abilities.  You will have to re-map some things, like moving "Reply" to "Ctrl+R".

- Q / E / R
- F / G
- Z / X / C
- 1 / 2 / 3 / 4 / 5

Specific notes:

- "Q" is hard on the pinky, so don't put something there that you'll mash all the time.
- "E" is a really good key for something you hit all the time, even when moving
- "R" is a close 2nd, also easy to hit when moving
- "F" is easy to hit for kick / interrupts
- "G" tends to be my "throw ability" key
- Anything out past "6" is hard to hit reliably

Shift-variants are pretty easy to use as well, so E / Shift-E or R / Shift-R for related abilities.

It's best to use macros for the shift-key variants so that you can reduce the number of bar slots used.  You could potentially get all your abilities onto the three middle vanilla UI bars.  Leaving the right side bars for extra things.

## Key-bindings

Mappings|(no mod)|Shift+key|Ctrl+key|Ctrl+Shift+key
-|-|-|-|-
Left Click||||
Right Click||||
Middle Click||||
Mouse 4||||
Mouse 5||||
Q|Death's Caress|||
E|Heart Strike|Marrowrend||
R|Blood Boil|||
F|Mind Freeze|Asphyxiate||
G|Death and Decay|Gorefiend's Grasp||
Z|Dancing Rune Weapon|Icebound Fortitude||
X|Vampiric Blood|Anti-Magic Shell||
C||||
1|Taunt|Death's Advance||
2|Death Grip|||
3||||
4||Death Strike||
5||||
6||||

## Macros

Note that you should put spells that use modifiers before those that do not use modifiers.

### Blood E

```
#showtooltip [mod:shift] Marrowrend; Heart Strike
/cast [mod:shift,@targettarget,harm] [mod:shift,harm] Marrowrend
/cast [@targettarget,harm] [harm] Heart Strike
```
### Blood F

```
#showtooltip [mod:shift] Asphyxiate; Mind Freeze
/cast [mod:shift,@targettarget,harm] [mod:shift,harm] Asphyxiate
/cast [@targettarget,harm] [harm] Mind Freeze
```

### Blood X

```
#showtooltip [mod:shift] Anti-Magic Shell; Vampiric Blood
/cast [mod:shift] Anti-Magic Shell; Vampiric Blood
```

### Blood Z

```
#showtooltip [mod:shift] Icebound Fortitude; Dancing Rune Weapon
/cast [mod:shift] Icebound Fortitude; Dancing Rune Weapon
```
