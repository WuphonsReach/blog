---
layout: post
title: 'DF 0.43: Dakasasob 753 Attack of the weretapir'
date: '2017-03-14T23:47:00.000-04:00'
author: Wuphon's Reach
category:
- DwarfFortress
tags:
- DF0.43
- Dakasasob
- DFHack

gallery1:
  - url: http://i.imgur.com/dPZdiMx.png
    image_path: http://i.imgur.com/dPZdiMx.png
    alt: "Attack of the weretapir in 753"

gallery2:
  - url: http://i.imgur.com/67XLTl6.png
    image_path: http://i.imgur.com/67XLTl6.png
    alt: "Weretapir beating the stonecrafter in the head, with a sock."

gallery3:
  - url: http://i.imgur.com/wcyqFFj.png
    image_path: http://i.imgur.com/wcyqFFj.png
    alt: "Leatherworker injuries"

---

Year 753 has been a busy one for the fort.  

DFHack's `autobutcher` has been configured:

    [DFHack]# autobutcher target 15 15 10 5 BIRD_CHICKEN
    Setting new target count for race(s): BIRD_CHICKEN 
    [DFHack]# autobutcher target 15 15 10 5 BIRD_GOOSE
    Setting new target count for race(s): BIRD_GOOSE 
    [DFHack]# autobutcher target 15 15 10 5 BIRD_TURKEY
    Setting new target count for race(s): BIRD_TURKEY 
    [DFHack]# autobutcher watch BIRD_CHICKEN BIRD_GOOSE BIRD_TURKEY
    Start watching race(s): BIRD_TURKEY BIRD_GOOSE BIRD_CHICKEN 
    [DFHack]# autobutcher target 30 30 20 5 PIG
    Setting new target count for race(s): PIG 
    [DFHack]# autobutcher watch PIG
    Start watching race(s): PIG 
    [DFHack]# autobutcher target 15 15 25 10 DOG
    Setting new target count for race(s): DOG 
    [DFHack]# autobutcher watch DOG
    Start watching race(s): DOG 
    [DFHack]# autobutcher target 10 10 10 5 CAT
    Setting new target count for race(s): CAT 
    [DFHack]# autobutcher watch CAT 
    Start watching race(s): CAT 

    [DFHack]# autobutcher list
    Autobutcher status: not enabled, noautowatch, sleep: 6000
    Default setting for new races: fk=5 mk=1 fa=5 ma=1
    Races on autobutcher list: 
    watched: CAT fk=10 mk=10 fa=10 ma=5
    watched: BIRD_CHICKEN fk=15 mk=15 fa=10 ma=5
    watched: DOG fk=15 mk=15 fa=25 ma=10
    watched: BIRD_GOOSE fk=15 mk=15 fa=10 ma=5
    watched: PIG fk=30 mk=30 fa=20 ma=5
    watched: BIRD_TURKEY fk=15 mk=15 fa=10 ma=5

    [DFHack]# autobutcher start
    Starting autobutcher.
    Reading from save: autobutcher/watchlist/BIRD_CHICKEN
    Reading from save: autobutcher/watchlist/BIRD_GOOSE
    Reading from save: autobutcher/watchlist/BIRD_TURKEY
    Reading from save: autobutcher/watchlist/CAT
    Reading from save: autobutcher/watchlist/DOG
    Reading from save: autobutcher/watchlist/PIG

    [DFHack]# autobutcher list
    Autobutcher status: enabled, noautowatch, sleep: 6000
    Default setting for new races: fk=5 mk=1 fa=5 ma=1
    Races on autobutcher list: 
    watched: CAT fk=10 mk=10 fa=10 ma=5
    watched: BIRD_CHICKEN fk=15 mk=15 fa=10 ma=5
    watched: DOG fk=15 mk=15 fa=25 ma=10
    watched: BIRD_GOOSE fk=15 mk=15 fa=10 ma=5
    watched: PIG fk=30 mk=30 fa=20 ma=5
    watched: BIRD_TURKEY fk=15 mk=15 fa=10 ma=5

This will result in auto-butchering of any animals that exceed those limits.  For more details, refer to [DFHack Plugins](http://dfhack.readthedocs.io/en/stable/docs/Plugins.html#autobutcher).  I still have to lock the door to the egg laying rooms where all of the birds are pastured (using zones) in order to get eggs to hatch before they are disturbed by dwarves.  But I only need to do that once per year or so in order to keep an adequate bird population.

On the news front, the visiting human diplomat turned out to be a vampire (true name of "Ohe Anstridduka").  He killed two of my dwarves before leaving.  He was not spotted in either case and I had to resort to DFHack's cursecheck to uncover him (after checking every single citizen in the fortress).  Visiting vampires that are not citizens are really hard to catch.  Fortunately, he left and the fort is safe again.  However, prior to his next visit, I'm going to break down the walls between the rooms and replace them with glass or gem windows.  That will make it much harder to feed on a sleeping citizen without being spotted.

The interesting thing is that the spouse of one of the victims knew their spouse was dead, even before the body was discovered.  Dwarves must have a psychic link!

After that, I was attacked by a human weretapir named "Pibang Bugijoñu".

{% include gallery id="gallery1" %}

Four dwarves were involved in the fight:

- Medtob (presser, deceased)
- Kulet (stonecrafter, injured)
- Mistêm (leatherworker, heavily injured)
- Cerol (potter)

Medtob died nearly instantly (well, after the puppy), then the weretapir spent a long time attempting to beat the stonecrafter to death.  With a sock.

{% include gallery id="gallery2" %}

The leatherworker had severe injuries and is still being treated.  Given the low skill level of the medical care around the fort, the prognosis is poor.

{% include gallery id="gallery3" %}

The stonecrafter, on the other hand, is already out of the hospital after being bandaged.  But the 'z'-'h' health screen shows that some of the neck wounds are infected.