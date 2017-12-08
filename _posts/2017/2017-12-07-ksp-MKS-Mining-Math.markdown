---
layout: post
title: 'KSP 1.3.1: MKS Mining Math'
date: '2017-12-07T21:57:00.000-05:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram
- KSP2017

---

I do a lot of automated miners when using the USI MKS add-on which harvest (and convert) resources found in a biome and push them into Planetary Storage ([USI logistics concept](https://github.com/UmbraSpaceIndustries/MKS/wiki)).  This means that you have to pay attention to how KSP handles "catch-up" mechanics in order to get good results.  When a craft is "on rails" in the background, no processing occurs with stock KSP mechanics.  Then, when you switch to the craft, KSP simulates what has happened while you were away in six-hour chunks.

#### Basics of Planetary Logistics

- There must be at least one part with the `ModulePlanetaryLogistics` module attached to the vessel.
- Pushing to PL can be done without any crew, pulling from PL requires crew (currently Pilot or Quartermaster).
- Some parts are push-only (the `ModulePlanetaryLogistics` module will say `PushOnly = true`), such as the Modular Processing Units (MPU).
- Pulling from PL can be done with parts such as the [MKS 'Duna' Logistics Center](https://github.com/UmbraSpaceIndustries/MKS/blob/master/FOR_RELEASE/GameData/UmbraSpaceIndustries/MKS/Parts/Duna_LogCenter.cfg).  These say `PushOnly = false` in their configuration file.  They must have a qualified kerbal stationed inside them in order to pull.
- Warehouse parts (with the `USI_ModuleResourceWarehouse` module), with planetary storage turned on in the right-click menu, will pull when under 25% full and push when over 75% full ([source](https://github.com/UmbraSpaceIndustries/MKS/blob/master/Source/KolonyTools/KolonyTools/PlanetaryLogistics/ModulePlanetaryLogistics.cs#L16-L20)).
- Pushing to PL is a lossy process, you lose 5% of what you push.
- A Modular Processing Unit (MPU) can be used on an automated vessel to push for "mining-only" projects.  You do not need to turn the MPU on, nor do you need to stock it with machinery (which saves on launch mass).

If you are on Linux (or have a "bash" shell installed like "git bash"), you can find modules which can participate in PL.  This has to be run from the location of your KSP folder (e.g. executing the command `cd ~/ksp/1.3.1/Play/GameData/` first).

    find . -name '*.cfg' -exec grep -H 'ModulePlanetaryLogistics' {} \; -exec awk -v RS='}' '/ModulePlanetaryLogistics/' {} \;

By running `awk` we can also output whether the module is push-only.  I could go even further with piping the output into a second `grep` command that only displays output lines with an equals sign.

    ~/WR/ksp/1.3.1/Play/GameData$ find . -name '*.cfg' -exec grep -H 'ModulePlanetaryLogistics' {} \; -exec awk -v RS='}' '/ModulePlanetaryLogistics/' {} \; | grep '='

    ./UmbraSpaceIndustries/MKS/Parts/MKS_Processor375.cfg:		name = ModulePlanetaryLogistics
    name = ModulePlanetaryLogistics
    PushOnly = true
    ./UmbraSpaceIndustries/MKS/Parts/Duna_LogCenter.cfg:		name = ModulePlanetaryLogistics
    name = ModulePlanetaryLogistics
    ./UmbraSpaceIndustries/MKS/Parts/Tundra_PioneerLC.cfg:		name = ModulePlanetaryLogistics
    name = ModulePlanetaryLogistics
    ./UmbraSpaceIndustries/MKS/Parts/MKS_Processor250.cfg:		name = ModulePlanetaryLogistics
    name = ModulePlanetaryLogistics
    PushOnly = true
    ./UmbraSpaceIndustries/MKS/Parts/MKS_Processor125.cfg:		name = ModulePlanetaryLogistics
    name = ModulePlanetaryLogistics
    PushOnly = true

#### The six-hour rule

KSP catch-up mechanics work in six-hour chunks.  

If your are pulling from PL in order to process resource A into resource B, you should size your input resource tank to hold enough for **12 hours** ([source link](https://github.com/UmbraSpaceIndustries/MKS/blob/master/Source/KolonyTools/KolonyTools/PlanetaryLogistics/ModulePlanetaryLogistics.cs#L100-L125)

).

- Resource tanks only issue a pull request when less than 25% full.
- They can only issue a single pull request from PL per time period (six hours).
- They will only pull enough to fill themselves up to 50% full.

If you are pushing an output from a process or drill, then you should size your output tank big enough to hold **12 hours**.

- Resource tanks only issue a push request when more than 75% full.
- They only issue a single push request to PL per time period (six hours).
- They will only push enough to empty themselves down to 50% full.

To be safe, you should add 10-25% to those values if you want absolutely zero loss.

#### Working the numbers

Harvesting `RareMetals` with a concentration of 6.59% (measured with the "Surface Scanning Module").  The "MEU-100-A Pulse Drill" shows a rate of 0.065892/sec and I have four of them installed on the vessel.

    4 * 0.065892 units/second * 3600 seconds * 12 hours = 11386 units per 12 hours

If my storage tank only holds 2250, then the most I can push into PL per 12 hours is 2250 units.  That means I will lose 80% of my output to overflow.  Either I need a bigger storage tank (like the 5m Kontainer that holds XXX units of `RareMetals` or multiple smaller tanks), or I need fewer drills.

I like to design my vessels around 4 drills and 5% resource concentration.

    4 * 0.05 units/sec * 3600 seconds * 12 hours = 8640 units per 12 hours

#### Automated Ore Miner with LF/Ox MPU

Harvesting of `Ore`, concentration of 9.92%, using "MEU-100-A Pulse Drill", pushing through a 3.75m MPU, and converting into LF/Ox.

    4 * 0.099204 ore/second * 3600 seconds * 12 hours = 17142 units of ore per 12 hours

A 3.75m Kontainer tank only holds 3000 ore, so that gives a very high overflow rate.  We should use a pair of the 5m Kontainers, as each holds 7500 ore, but even that will have a small amount of overflow.

So let's look at how much ore a 3.75m MPU can consume:

    3 * 0.10 ore/sec * 3600 * 12 = 12960 units of ore per 12 hours

If your resource concentration is exactly 10%, then you need three "MEU-100-A Pulse Drill" per 3.75m MPU (which has three converters).  If your resource concentration is less, then you need more drills per MPU.  Since good ore concentrations are in the 7-9% range, we should design for a 7.5% resource concentration with a goal of keeping the 3.75m MPU busy.  That means a pair of 5m Kontainer tanks (15000 total) for the input storage to avoid overflows.

    4 drills * 0.075 ore/sec * 3600 * 12 = 12960 ore/12h
    3 converters * 0.10 ore/sec * 3600 * 12 = 12960 ore/12h

Now for the opposite problem, how much output storage do we need per 3.75m MPU?  I'm assuming using the `LFO` conversion, which produces both LiquidFuel and Oxidizer in the correct ratio of (1:1.2222 ratio of LF:Ox) to be stored in a Kontainer.  I'm also assuming that the MPU runs at 100% capacity (baseline).

    3 converters * 32.40 LF/hr * 12 hours = 1166 LF per 12h (also 1425 of Oxidizer per 12h)

Since my automated miner is landing with a 5m Kontainer holding 3375 LF / 4125 Ox, I will not need additional storage tanks to hold the output.  But what if I also run one of the three converters to make MonoPropellant instead?

    1 converter * 0.02 MP/sec * 3600 sec * 12 hours = 864 MP per 12h

That will fit into the 2.5m "Kontainer Tank - Cluster" part.

What about EC (electrical charge) storage?  Again, we need enough to function for 12 hours.  The four drills require 10 EC/s and each converter requires 12 EC/s for a total power budget of 76 EC/s, rounded up to 80 EC/s for safety.

    80 EC/s * 3600 sec * 12 hour = 3456000 EC

That's a really big number (3.5 million), way too big to survive on just batteries.  Fortunately, EC consumption follows a different set of catch-up mechanics and you do not need 12 hours worth of EC storage.   You could possibly get away with as little as 10 seconds worth of EC storage, but I suggest 100-300 seconds.

#### Automated Hydrates Mining

For Hydrates and a few other MKS resources, the MPU cannot process them into a different format.  You need more advanced parts in order to do that.  So these miners are basically a zero-machinery and non-converting MPU, a large storage tank, and some drills.

    1.0 hyd/sec * 0.05 density * 3600 seconds/hour * 12 hours = 2160 hyd/12h (per MEU-100-A drill)
    6.0 hyd/sec * 0.05 density * 3600 seconds/hour * 12 hours = 12960 hyd/12h (per MEU-500-A drill)

The 2.5m round Kontainer holds 4500 hydrates, so it is suitable for a 5-6% resource density and two "MEU-100-A Pulse" drills.  The 3.75m square Kontainer holds 54000 hydrates and would be better if you're doing a pair of the larger "MEU-500-A Pulse" drills.
