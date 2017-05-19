---
layout: post
title: 'DF 0.43: Using the vanilla job manager'
date: '2017-03-19T07:00:00.000-04:00'
author: Wuphon's Reach
category:
- DwarfFortress
tags:
- DF0.43

gallery1:
  - image_path: http://i.imgur.com/WQXtN6J.png
    alt: "DF2014: Job Manager (create skull totems)"
    url: http://i.imgur.com/WQXtN6J.png

gallery2:
  - image_path: http://i.imgur.com/iiWvp2A.png
    alt: "DF2014: Job Manager (create rock doors to a maximum of 20)"
    url: http://i.imgur.com/iiWvp2A.png

gallery3:
  - image_path: http://i.imgur.com/PqEQ7at.png
    alt: "DF2014: Job Manager (create lavish meals)"
    url: http://i.imgur.com/PqEQ7at.png

gallery4:
  - image_path: http://i.imgur.com/AYRxWWB.png
    alt: "DF2014: Job Manager (create cloth socks)"
    url: http://i.imgur.com/AYRxWWB.png

---

Here are some recipes for the job manager (`j`-`m`) or using the workshop profile (`P`) when a workshop is selected with the query (`q`) command.  Since I almost always have very specific stockpiles tied to my workshops, I use the profile command more then the regular job manager.  That ties the job to a specific workshop and makes sure that the workshop only builds with the materials from its input stockpiles.

One downside of using the job manager is that there is no way to tell the conditions to only check the input stockpile for material quantities before generating the workshop order.  This can result in job cancellation spam if you don't have the materials already moved to the proper stockpile.  On the other hand, you might forgo the use of stockpiles that give to the workshop and trust that your dwarf will pull their material from the nearest instead of material from far afield.  The latter is far more risky and can result in masons hauling boulders at a snail's pace across the width of the embark.

## Creating skull totems

{% include gallery id="gallery1" %}

The Craftdwarf's Workshop should be pulling from a refuse pile where the skulls are stored.  This will only create totems if you have at least 20 skulls laying around the fortress (the check does not verify that the needed quantity is in the input stockpile).

## Keep a stock of at least 20 rock doors

{% include gallery id="gallery2" %}

These same settings could be used to produce flood gates, thrones, tables, coffins, slabs, statues, armor stands, weapon racks, coffers, and cabinets.

## Lavish meals

{% include gallery id="gallery3" %}

I usually have two kitchens setup with a workshop profile order like this.  One only kicks in when the number of raw materials is above 500 and pulls from anywhere in the fortress.  The other turns on when there is 100+ raw materials as shown above, but that kitchen has limited input stockpiles.

## Cloth socks

{% include gallery id="gallery4" %}

This recipe can also be used for cloaks and hoods.

