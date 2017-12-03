---
layout: post
title: 'KSP 1.3.1: Career First Flight'
date: '2017-12-03T15:55:00.000-04:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram
- KSP2017

first-eva:
  - image_path: /imgs/ksp/2017/syb17e-first-eva-y6d215.jpg
    alt: "KSP: First EVA over Kerbin"
    url: /imgs/ksp/2017/syb17e-first-eva-y6d215.jpg

first-docking:
  - image_path: /imgs/ksp/2017/syb17e-first-docking-y6d215a.jpg
    alt: "KSP: First docking over Kerbin"
    url: /imgs/ksp/2017/syb17e-first-docking-y6d215a.jpg
  - image_path: /imgs/ksp/2017/syb17e-first-docking-y6d215b.jpg
    alt: "KSP: First docking over Kerbin"
    url: /imgs/ksp/2017/syb17e-first-docking-y6d215b.jpg

first-landing:
  - image_path: /imgs/ksp/2017/syb17e-first-landing-y6d215a.jpg
    alt: "KSP: First landing on Kerbin"
    url: /imgs/ksp/2017/syb17e-first-landing-y6d215a.jpg
  - image_path: /imgs/ksp/2017/syb17e-first-landing-y6d215b.jpg
    alt: "KSP: First landing on Kerbin"
    url: /imgs/ksp/2017/syb17e-first-landing-y6d215b.jpg
  - image_path: /imgs/ksp/2017/syb17e-first-landing-y6d215c.jpg
    alt: "KSP: First landing on Kerbin"
    url: /imgs/ksp/2017/syb17e-first-landing-y6d215c.jpg

---

The first kerbal flight is in the middle of year 6.  The plan is to launch two capsules, perform EVAs, have the four veterans rendezvous, and then land in the north arctic regions.  Some Lynx ground support vehicles have been positioned up there already.  These rockets are designed as automated rescue vehicles and do not require a pilot.  They have 9 days of supplies and 7 days of hab-time (USI-LS / MKS).  The capsule is a [modified Mk3-9 Orbital Command Pod](https://github.com/WuphonsReach/KSP-ScrapyardBob/blob/master/NearFutureSpacecraft/CommandPods/command-mk3-9.cfg) from [Near Future Spacecraft](https://spacedock.info/mod/708/Near%20Future%20Spacecraft).

The first EVA by Val is a success!  Jeb lost the coin toss on the ground prior to launch, so he gets to go second.

{% include gallery id="first-eva" %}

Docking was performed by Jeb.

{% include gallery id="first-docking" %}

First landing was in the northern polar regions.  It came in short of the expected landing sites, so the Lynx support crew had to drive westward.

{% include gallery id="first-landing" %}

After that comes a stand-down period while we prepare for a more permanent outpost in low Kerbin orbit.  The plan is to put a pair of level 1 scientists into orbit and have them do research (each can do about 180 science per year).

In the meantime, the 2-kerbal pod needs some work on its parachute opening altitudes and some other emergency features need to be tweaked.  The air bags on the underside are good for impacts up to 500 m/s, and the drogue chutes already slow the vessel to about 40-45 m/s.  That means I can set the main chutes to open at 1000m and still have a chance of survival if the capsule comes down in the more mountainous regions of Kerbin.  (The reason I don't want the chutes to fully open at 2500m ASL is because you have to spend a few minutes waiting for the capsule to touch down.  That's why I like to wait until only 1000m before fully opening them.)
