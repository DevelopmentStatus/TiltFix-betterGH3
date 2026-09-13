# TiltFix

A GH3+/betterGH3 plugin that fixes Star Power over-activating from small
controller jitter, by requiring a tilt to be held for a short window before
it counts.

## Install

1. Copy `TiltFix.dll` into your Guitar Hero III `Plugins` folder.
2. Launch the game. That's it.

## Rebuilding from source

The `src` folder has everything needed to rebuild `TiltFix.dll` — no other
project or repo required. It links against a `core.dll` already present in
your GH3+ / betterGH3 install (via `core.def`), so no separate build step
for `core.dll` is needed.

1. Open a "Developer Command Prompt for VS" (x86).
2. `cd src`
3. `build.bat`

This produces `TiltFix.dll` in the `src` folder.
