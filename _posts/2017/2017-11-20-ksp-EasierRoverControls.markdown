---
layout: post
title: 'KSP 1.3.1: Easier Rover Controls'
date: '2017-11-20T18:41:00.000-04:00'
author: Wuphon's Reach
category:
- KerbalSpaceProgram
tags:
- KerbalSpaceProgram

translation-rotation:
  - image_path: /imgs/ksp/2017/ksp-settings-input-flight-change-switch-translation-rotation-key.png
    alt: "KSP: Switch Translation/Rotation Setting"
    url: /imgs/ksp/2017/ksp-settings-input-flight-change-switch-translation-rotation-key.png

pitch-down:
  - image_path: /imgs/ksp/2017/ksp-settings-input-flight-pitch-down-key.png
    alt: "KSP: Input Settings (Pitch Down)"
    url: /imgs/ksp/2017/ksp-settings-input-flight-pitch-down-key.png

pitch-up:
  - image_path: /imgs/ksp/2017/ksp-settings-input-flight-pitch-up-key.png.png
    alt: "KSP: Input Settings (Pitch Up)"
    url: /imgs/ksp/2017/ksp-settings-input-flight-pitch-up-key.png.png

yaw-left:
  - image_path: /imgs/ksp/2017/ksp-settings-input-flight-map-yaw-left-key.png
    alt: "KSP: Input Settings (Yaw Left)"
    url: /imgs/ksp/2017/ksp-settings-input-flight-map-yaw-left-key.png

yaw-right:
  - image_path: /imgs/ksp/2017/ksp-settings-input-flight-map-yaw-right-key.png
    alt: "KSP: Input Settings (Yaw Right)"
    url: /imgs/ksp/2017/ksp-settings-input-flight-map-yaw-right-key.png

drive-forward:
  - image_path: /imgs/ksp/2017/ksp-settings-input-vessel-drive-forward-key.png
    alt: "KSP: Input Settings (Drive Forward)"
    url: /imgs/ksp/2017/ksp-settings-input-vessel-drive-forward-key.png

drive-backward:
  - image_path: /imgs/ksp-settings-input-vessel-drive-backwards-key.png
    alt: "KSP: Input Settings (Drive Back)"
    url: /imgs/ksp/2017/ksp-settings-input-vessel-drive-backwards-key.png

---

One of the more annoying things in KSP is trying to control rovers on the surface of a low-gravity planet.  By default, the '`W`' and '`S`' keys will pitch the rover forward and back at the same time you are accelerating / reversing.  This can easily lead to tip-overs on low gravity worlds or other undesired behavior.

There is a better way.

#### Re-Map Switch Modes

By default the `[space bar]` is used for both staging and for switching between the "`LIN`" and "`ROT`" docking modes.  Naturally, that's dangerous because you might stage at the wrong time.

Start by going into the game settings (first menu when you start KSP) and under the "`Input`" screen, on the "`Flight`" tab look for a setting called "`Switch Translation/Rotation`".  You should remap that key to something innocent, like the '`F`' key.

{% include gallery id="translation-rotation" %}

Now, when starting to drive the rover you can use the "`delete`" key to switch to docking mode and the '`F`' key to switch between the two control modes.

#### Change Pitch Keys

The next two keys to adjust are the pitch up/down keys ('`S`' and '`W`' by default).  These are also on the "`Flight`" tab.  Notice that I have turned off the middle checkbox labeled "`Docking (Translation)`".  Now when I am in "`LIN`" docking mode, these keys will no longer pitch the nose up/down.

{% include gallery id="pitch-down" %}

{% include gallery id="pitch-up" %}

#### Change Yaw Keys

The next two keys to adjust are the yaw left/right keys ('`A`' and '`D`' by default).  These are also on the "`Flight`" tab.  

Here, I make them available to all of the modes.  I find that this gives better control for rovers when turning than just setting the `A`/`D` keys to the wheel steering controls.

{% include gallery id="yaw-left" %}

{% include gallery id="yaw-right" %}

You may need to experiment with turning off the middle button.

#### Change Driving Keys

Here we set the '`W`' and '`D`' keys to only work in translation docking mode for driving forward and backwards.

{% include gallery id="drive-forward" %}

{% include gallery id="drive-backward" %}

## Using It To Drive

1. Press the "`Delete`" key to get into docking mode.  (The "`Insert`" key takes you back to normal mode.)
1. Press the '`F`' key to change between `LIN` and `ROT` (lower-left corner of the screen).  The mode you want for driving is going to be `LIN` (the translation docking mode).
1. Turn on SAS with the '`T`' key.
1. Speed up with '`W`', use '`S`' to slow down or reverse.
1. Turn with '`A`' and '`D`'.  

With the SAS turned on, you should be mostly immune to flipping, but you should still be careful.  You may need to turn SAS off at times and you can switch from `LIN` to `ROT` to tilt the nose up/down.
