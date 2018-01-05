---
layout: post
title: 'More MKS Mining Math'
date: '2017-12-24T06:31:00.000-05:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram
- KSP2017

---

Some quick math for the stock ore mining drills plus the 2.5m Material Processing Unit (MPU) from USI/MKS.  The numbers that can get on-site after starting extraction are:

- Ore concentration is 11.36%
- 'Drill-O-Matic' Mining Excavator pulls 0.170441 ore/sec
- Three drills drives a 2.5m MPU creating LFO (LiquidFuel + Oxidizer) at 54.40%

What you see in the VAB:

- 'Drill-O-Matic' uses 22.5 EC/s, consumes 1.5 ore/sec and needs 200kW of cooling
- 2.5m MPU has two converters, each uses 5.64 EC/s, inputs 0.05 ore/sec, outputs 15.23 LF/hr and 18.61 Oxidizer/hr.

The goal of MKS Mining Math is that your storage tanks should never overflow during the KSP catch-up calculations.  If you're using Planetary Storage (a.k.a. PL or Planetary Logistics), then you need 12h of all input/output/intermediate storage.  If you rely on local logistics, multiply all storage tank sizes by ten.  But in this case, we're only pushing the output (LF/Ox) into PL.

With the 11.36% ore concentration (on the high side):

- Production: 0.170441 ore/sec * 3 drills * 3600 sec * 12h = 22100 ore/12h

Figuring out the MPU rate is much harder.  According to the VAB, each MPU converter on the 2.5m unit can convert 0.05 ore/sec.  But given the numbers at the drilling site, I'm seeing more like 0.469 ore/sec (about a factor of 9x difference).  That will probably go down as the `Machinery` level decreases.

- Conversion: 1 unit of ore = 0.05 ore/sec * 3600 = 15.23 LF/hr = 11.8 ore/LF unit

So for every unit of ore that I produce during the 12h period, I need 1/11.8 storage for LF (about 1900).

Except that I know I'm running my 2.5m MPU at about 50% right now and I want to max that out if possible.  That means I need:

- Six of the 'Drill-O-Matic' drills (135 EC/s 1200 kW of cooling)
- 44,000 ore storage (two of the shipping container style 5m Kontainers)
- 3750 storage of Liquid Fuel and the equivalent ratio of Oxidizer (slightly more than a 3.75 cluster style Kontainer tank)
