---
layout: post
title: 'KSP 1.3.1: SYB17D Career Start'
date: '2017-11-18T06:52:00.000-04:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram
- KSP2017

---

I think I have things sorted out enough to start a longer career game.  See the [previous post]({{ site.baseurl }}{% post_url 2017/2017-11-15-ksp-CareerStartSettings %}) for the difficulty / game settings.

I also use my personal re-balance mod called [Stock Antenna Balance](https://github.com/WuphonsReach/KSP-StockAntennaBalance/releases) which is designed to increase power requirements and re-balances the various antennas.

There are some other things I do like create copies of command pods and probe cores with built-in EC storage, mono-prop storage, life-support storage and a MechJeb core.  I do that in order to reduce part count.  These are available in my [KSP ScrapyardBob](https://github.com/WuphonsReach/KSP-ScrapyardBob) page.  Because it is all done with ModuleManager, it does not matter if you do not have the addon installed that is being changed.  It will simply skip the creation of parts where the parent addon is not found.

---

I also like to start with 5000 science and 15 million in funds (that requires editing the persistent.sfs file, or using the mod-F12 cheats menu).

Here's the section with the current funding level:

    SCENARIO
    {
      name = Funding
      scene = 7, 8, 5, 6
      funds = 15000000
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

## Getting Started

Due to the KCT settings that I use, plan on just fast-forwarding until about day 250 when the first layer of nodes unlocks (90 point nodes).  That will give you enough parts to actually do something besides just go up and down.

The first craft is going to be a throwaway that will just go up, get out of the atmosphere, and then crash.  Even that will probably takes 30-90 days to build and launch, which makes the first year go fast.


