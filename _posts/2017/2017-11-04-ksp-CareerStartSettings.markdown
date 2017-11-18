---
layout: post
title: 'KSP 1.3.1: Career Settings'
date: '2017-11-04T16:07:00.000-04:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram

settingbasic:
  - image_path: /imgs/ksp/2017/game-difficulty-131-nov2017-basic.png
    alt: "KSP: Career Game Settings (Basic)"
    url: /imgs/ksp/2017/game-difficulty-131-nov2017-basic.png

settingadvanced:
  - image_path: /imgs/ksp/2017/game-difficulty-131-nov2017-advanced.png
    alt: "KSP: Career Game Settings (Advanced)"
    url: /imgs/ksp/2017/game-difficulty-131-nov2017-advanced.png

settingkct:
  - image_path: /imgs/ksp/2017/kct-settings-nov2017.png
    alt: "KSP: Career Game Settings (KCT)"
    url: /imgs/ksp/2017/kct-settings-nov2017.png

---

I think I have things sorted out enough to start a career.  There are still some things that I don't have installed, but they can be added shortly.

First up is the difficulty settings.  I like to start with "Moderate" and then adjust.

{% include gallery id="settingbasic" %}

{% include gallery id="settingadvanced" %}

I am completely nuking the settings for the build in DSN (Deep Space Network) which the default KSP gives you.  The problem with the default KSP version is that it makes it trivial to setup communications with distant planets in the solar system.  Even planets like Eeloo.

I also use my personal re-balance mod called [Stock Antenna Balance](https://github.com/WuphonsReach/KSP-StockAntennaBalance/releases) which is designed to increase power requirements and re-balances the various antennas.

There are some other things I do like create copies of command pods and probe cores with built-in EC storage, mono-prop storage, life-support storage and a MechJeb core.  I do that in order to reduce part count.  These are available in my [KSP ScrapyardBob](https://github.com/WuphonsReach/KSP-ScrapyardBob) page.  Because it is all done with ModuleManager, it does not matter if you do not have the addon installed that is being changed.  It will simply skip the creation of parts where the parent addon is not found.

---

I also like to start with 5000 science and 5 million in funds (that requires editing the persistent.sfs file).

Here's the section with the current funding level:

    SCENARIO
    {
      name = Funding
      scene = 7, 8, 5, 6
      funds = 5000000
    }

And the section with the current number of research points:

    SCENARIO
    {
      name = ResearchAndDevelopment
      scene = 7, 8, 5, 6
      sci = 5000
      Tech
      {
        id = start
        state = Available
        cost = 0
        part = basicFin
        part = mk1pod
        part = solidBooster.sm
        part = GooExperiment
        part = trussPiece1x
        part = parachuteSingle
      }
    }

Make sure you disable the stock resource maps in SCANSat when starting.  You may need to reset all data so that you do not know where the resources are.
