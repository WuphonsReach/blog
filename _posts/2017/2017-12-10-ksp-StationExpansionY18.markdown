---
layout: post
title: 'KSP 1.3.1: Career Expansion of Alpha Station'
date: '2017-12-10T04:03:00.000-05:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram
- KSP2017

shot1:
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1a.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1a.jpg
    alt: "KSP: Expansion module"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1b.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1b.jpg
    alt: "KSP: Expansion module"

shot2:
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-1.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-1.jpg
    alt: "KSP: Docking the expansion module"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-2.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-2.jpg
    alt: "KSP: Docking the expansion module"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-3.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-3.jpg
    alt: "KSP: Docking the expansion module"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-4.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-4.jpg
    alt: "KSP: Docking the expansion module"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-5.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-docking-5.jpg
    alt: "KSP: Docking the expansion module"

shot3:
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-1.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-1.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-2.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-2.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-3.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-3.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-4.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-4.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-5.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-5.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-6.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-6.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-7.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-7.jpg
    alt: "KSP: Making the new module a permanent part"
  - image_path: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-8.jpg
    url: /imgs/ksp/2017/syb17e/y18-station-expansion-1-construction-8.jpg
    alt: "KSP: Making the new module a permanent part"

---

The first expansion for 'Alpha' station around Kerbin is in orbit.  This adds power, recycling and more food production and paves the way for installing Station Science modules onto the expansion nodes.  I'l have to have an engineer EVA and destroy the cupola that is sitting on the 2.5m construction port before docking.

{% include gallery id="shot1" %}

Manifest:

- MKS 'Tundra' Agriculture Module, configured as Agroponics
- MKS 'Tundra' Kerbitat, configured as a Recycler
- Four expansion nodes with 2.5m construction ports
- 2.5m USI reactor
- Lots of active thermal control system (TCS) panels and radiators
- Machinery storage, Xenon storage

Docking was fairly easy using MechJeb's SmartASS system.  After setting my target to the docking port of choice, go to the `TGT` tab and use `PAR-` to line up parallel to the docking port, plus turn on the rotation checkbox.  Now it's just a matter of using `IJKLHN` keys to get around onto the proper side.  I prefer to dock using [DPAI](https://forum.kerbalspaceprogram.com/index.php?/topic/40423-131-docking-port-alignment-indicator-version-670-updated-053117/), which is almost a must-have add-on as you can resize it to give you more precise information about your alignment.

- Red lines? You're on the wrong side of the docking plane.  Use `N` to back up.
- Green lines? You're on the right side of the docking plane.  Use `H` to move towards the plane and `N` to back away from the plane.
- The `CDST` value is how far away you are from the docking plane.  Try to keep it around 20-50m until you line up with the green lines almost in the center.
- The `CVEL` is how fast you are moving towards/away from the docking plane.  Keep this value below 1 m/s while moving around to the proper side of the station.  Then, as you start using `IJKL` to line up with the docking port, you want this value to be as close to 0.00 as possible (this keeps your `CDST` value at a constant distance).
- Once your green lines are in the center, move forward at about 0.25-0.50 m/s (`CVEL`), slowing down to 0.10-0.20 m/s under 10m (`CDST`) distance.

{% include gallery id="shot2" %}

I'm not done once I finished docking.  There is post-dock work to be done:

- Use [Ship Manifest](https://forum.kerbalspaceprogram.com/index.php?/topic/56643-130-ship-manifest-crew-science-resources-v-5200-17-jul-17/) to empty out any fuel / storage tanks on the "tug" portion of the new module.
- EVA using an engineer and disassemble excess parts (all of the "tug" module that got it into place, plus RCS ports at the front of the payload).
- Get all kerbals into the rescue pods.
- Save, quicksave, save again.
- Use `Compress Parts (rotate)` on the outer of the two construction ports.  Cross your fingers and hope the vessel does not explode.
- EVA again to hook up KAS struts (if needed).

{% include gallery id="shot3" %}



