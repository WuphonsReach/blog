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

There are some other things I do like create copies of command pods and probe cores with built-in EC storage, mono-prop storage, life-support storage and a MechJeb core.  I do that in order to reduce part count.  These are available in my [KSP ScrapyardBob](https://github.com/WuphonsReach/KSP-ScrapyardBob) page.  Because it is all done with ModuleManager, it does not matter if you do not have the add-on installed that is being changed.  It will simply skip the creation of parts where the parent add-on is not found.

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

The first craft is going to be a throwaway that gets up into orbit with a small relay antenna and will be stationed in KEO orbit eventually.  It goes up in a very inefficient lofted trajectory in order to get it up into an orbit about 100-300km above the ground before leaving the range of the KSC transmitter.

I'll usually loft a few more with the HG-5R relay antenna into various orbits around Kerbin.  These rockets all cost less than 25k and are needed to get basic communications up around the planet to avoid most blind spots.

## Getting Serious About Communications

Now I turn to the Stock Antenna Balance contracts.  I'll have the RA-2 unlocked by now, which is the workhorse of the inner Kerbol system.  The contracts will ask me to put up a few in KEO (2863.33km) orbits, plus a few in polar orbits.

Once you have two satellites in 5h 59m 59.40s orbits (2863.33km) which are always above (give or take 30-60 degrees) of KSC, they can act as the anchor relays for the rest of the satellites around Kerbin.  When setting up these satellites, you should focus more on the orbital period and getting it down to within a second of that value.  That will minimize drift and your satellites will take dozens of years to get out of sync.

If you are off by 1/100th of a second from the perfect orbit, your satellite will drift about 4.26 seconds per year.  If I do my math right, that gives you about 1000 years before the satellites go below the horizon and no longer provide a link to KSC.  

For fine-tuning of your satellite orbital period, right-click the engine and throttle it back to 0.5% of maximum power.  Then use the `X` and `Left-Shift` keys to make small adjustments while burning prograde or retrograde.

It will be year four or five before I finish out the level 2 and 3 contracts around Kerbin for Stock Antenna Balance.

I like to move my polar satellites, after they have fulfilled the contract, out to an orbit of 81,430km altitude around Kerbin.  That is a period of almost exactly 115 Kerbin days and is close to the SoI limit around Kerbin.  By putting them so far out in the SoI, they can help with the far side of Minmus and Mun communications.  (If I'm not particular about orbital period, I just set the Ap/Pe values to 80,000km.)
