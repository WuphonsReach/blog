---
layout: post
title: 'WoW: Holy priest leveling in 8.1'
date: '2019-05-06T12:18:00.000-05:00'
author: Wuphon's Reach
category:
- WorldOfWarcraft
tags:
- WorldOfWarcraft
- WoWPriest

---

Leveling up a holy priest from scratch in World of Warcraft 8.1.  I have one up around level 100, but I don't remember how it all fits together enough to play at that level.

One of the hard bits about leveling up is figuring out where all your spells will be at maximimum level.  That's important so that your muscle-memory is in place when dungeons/raids make it hard.

**Table of Contents**

- [Key-bindings](#key-bindings)
- [WeakAuras2](#weakauras2)
  - [Mana Block](#mana-block)
- [Macros](#macros)
  - [Holy Fire / Smite](#holy-fire--smite)
  - [Levitate](#levitate)
  - [Interrupts](#interrupts)
  - [Holy Word: Serenity](#holy-word-serenity)
  - [Guardian Spirit](#guardian-spirit)

## Key-bindings

I like to use some sort of raid-frame add-on that lets you apply spells to people by putting the mouse pointer over their frame and using various chords/clicks.  This means your mouse and attention spends most of the time in a small area below the middle of the screen.

Mappings|(no mod)|Shift+key|Ctrl+key|Ctrl+Shift+key
-|-|-|-|-
Left Click|Heal|Flash Heal|Prayer of Healing|(target)
Right Click|Prayer of Mending|Renew||(VuhDo menu)
Middle Click|Purify||Mass Dispel|(set focus)
Mouse 4||||
Mouse 5||||
Q||||
E|Holy Fire|Smite||
Z|Fade|||
X||||
C||||
F|Holy Word: Chastise|(second interrupt)||(set focus)
G|Holy Word: Sanctify|||
1||||
2||||
3|Holy Word: Serenity|||
4|Guardian Spirit|||
5||||
6||||

Notes: 

- I find it difficult to hit "mouse 4" versus "mouse 5" reliably (while not moving the mouse), therefore all spells are duplicated across both keys in VuhDo.  And I only put spells there which are not time-critical.
- Most of the regular keys that also have a "shift" variant are done via macros.  This helps save on bar slots.  See the [Holy Fire / Smite](#holy-fire--smite) macro for an example.
- The "G" key is good for instant-cast targeted spells with long cool-downs.  It's far enough away from WASD not to be hit by accident, but close enough to hit while running with the W-key held down.

## WeakAuras2

Auras are ways to put key-information closer to the middle of the screen, or closer to your raid/party player grid.

### Mana Block

- Vertical bar to show mana amount (medium blue / dark blue)
- Highlight (light blue) to show mana consumed on the next cast
- short: Prayer of Mending / Holy Fire cooldowns
- medium: Holy Word: Serenity / Holy Word: Sanctify cooldowns
- long: Divine Hymn, Symbol of Hope, Guardian Spirit, Leap of Faith

## Macros

Note that you should put `/cast` or `/use` lines that use modifiers before those that do not use modifiers.

### Holy Fire / Smite

Casts "Holy Fire" (DoT) or "Smite" if the "shift" key is held down.  I put this on the "E" key because it gets spammed all the time.  Putting it on the "F" key would also work without torturing your fingers.

```
#showtooltip
/cast [mod:shift,@targettarget,harm,nodead][mod:shift,harm,nodead] Smite;
/cast [@targettarget,harm,nodead][harm,nodead] Holy Fire
```

### Levitate

Good example of a macro that applies the buff to whatever you point at (even works with various raid frames).  If the mouse pointer is not over a friendly (in the world / party frames), it will apply it to your target (if friendly).  Lastly, it will just apply it to yourself (useful when falling).

```
/cast [@mouseover,help,nodead][help][@player] Levitate
```

### Interrupts

Casts first interrupt, or a secondary interrupt spell if the "shift" key is held down. 

```
#showtooltip
/cast [mod:shift,@targettarget,harm,nodead][mod:shift,harm,nodead] Quaking Palm;
/cast [@targettarget,harm,nodead][harm,nodead] Holy Word: Chastise
```

### Holy Word: Serenity

```
#showtooltip Holy Word: Serenity
/cast [@mouseover,help,nodead][help,nodead] Holy Word: Serenity
```

### Guardian Spirit

```
#showtooltip Guardian Spirit
/cast [@mouseover,help,nodead][help,nodead] Guardian Spirit
```
