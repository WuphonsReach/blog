---
layout: post
title: 'Diplomacy module on Mount & Blade: Warband for Linux'
date: '2018-02-21T03:38:00.000-05:00'
author: Wuphon's Reach
category:
- MountAndBladeWarband
tags:
- MountAndBladeWarband

---

This is a copy of what I wrote up on the [TaleWorlds forum](https://forums.taleworlds.com/index.php/topic,374268.0.html) today.  It covers how to install the Diplomacy mod for Mount & Blade: Warband on Linux. The install steps should, I think, work for other module installs on Linux.

You should be able to download Diplomacy 4.3 here:
[https://forums.taleworlds.com/index.php?topic=116424.0](https://forums.taleworlds.com/index.php?topic=116424.0)

The current (version 4.3 of Diplomacy) download link is on the [www.mbrespository.com website as file ID 1887](http://www.mbrepository.com/file.php?id=1887) (there's a download link in the forum topic).

### Module installation

1. Find your MB:W install folder, which contains a "`Modules`" folder.

```
~/.steam/steam/steamapps/common/MountBlade Warband/Modules
```

2. Select all of the folders in the "`Modules`" folder and right-click to use the "Compress" option to create a ZIP or 7Z backup file.  Give it a name like "Modules_2018-02-21".  Note that you always need to start from a clean version of the "Native" folder when installing modules, so having backup copies of this folder is important.

3. Make a copy of the folder called "`Native`" and name it "`Diplomacy43`" (this is only a suggested name).  You need the content in this folder for things to work, then you will overlay the contents of the "Diplomacy_4.3.exe" file over it.  If you fail this step, you will spawn into the world in a flat grassy plain instead of a street scene.

4. Unpack the "Diplomacy_4.3.exe" file.  You should be able to right-click it and choose "Extract Here" which will create a new folder named "Diplomacy_4.3" (note the period).  Rename this folder as "Diplomacy43_Source" to keep from getting confused.

5. Go into the "Diplomacy43_Source" folder, select all files and folders, use the right-click menu.  Pick the "Copy" option or "Copy To" option.  Now paste them into the "Diplomacy43" folder.  Overwrite any existing files with the updated files from the Diplomacy mod (this can also be called "merging").

### Choosing which module to run

At this point the module is installed but you can't yet see it in-game. Instead of using the "`mbw_config_linux`" or "`mbw_config.sh`" commands to activate modules, I suggest an alternative old-school method.  I could never get the config program to run on Ubuntu Gnome 17.04.

1. Find your MB:W save folder in `~/.mbwarband`

2. Create a text file called "`last_module_warband`" (it may already exist)

3. Open this file with a text editor (built-in editor, vim, Atom, UltraEdit32, Visual Studio Code, etc.) and put the following on a line by itself.

```
Diplomacy43
```

- The name you put here needs to match the folder name in your "`Modules`" folder.
- The name is case-sensitive, you must match the actual folder name.
- If you want to go back to playing "Native", remove this file or just edit the line to say "Native"
- This is also how you could switch to playing one of the other modules like VC/NW

At this point, you should now be able to launch MB:W.  Probably the easiest way to see if Diplomacy is working is to use the "Camp" screen outside of town and look for the Diplomacy options.

### Newer versions

There's also the test version, updated in Dec 2017.  I have not tried that (my game has been working well in Diplomacy 4.3 from 2012).

[https://forums.taleworlds.com/index.php/topic,324014.0.html](https://forums.taleworlds.com/index.php/topic,324014.0.html)

Look for the link named "[Current test version is here](https://www.dropbox.com/sh/679r1y39lp1d4s9/AAD2MWmHZtmIYxX4Ubmw002Ea?dl=0)", which takes you to Dropbox.  Installation steps will be identical, but I suggest a folder name of "`Diplomacy20171221`".
