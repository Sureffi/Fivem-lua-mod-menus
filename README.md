# FiveM Lua Mod Menus

Two mod menus for [FiveM](https://fivem.net/) — the multiplayer modification
framework for GTA V — written in Lua. These are the oldest things I've kept:
the first serious code I ever wrote, begun at 13. No tutorials or reference
implementations existed for what I was trying to do, so most of it came from
reverse-engineering FiveM's client/server behavior and learning Lua as I went.

They're game-modding tools (the trainer/menu kind), preserved here as-is for
what they are: where I started. No guarantees either still runs against current
FiveM.

## The two menus

### `motion.lua` — 2017–2019 (~6,200 lines)
The sprawling one. 60+ menu screens across self, vehicle, weapon, player, and
teleport systems, with integration for the ESX and VRP server frameworks. Built
on a heavily modified fork of the warmenu UI library — modified far enough that
I renamed the API to its own namespace. Teenage maximalism, every feature I
could figure out how to build, all in one file.

### `curse.lua` — 2021 (~2,700 lines)
The rebuild, and the more interesting one technically. Instead of leaning on an
existing UI library, I wrote my own **immediate-mode menu framework from
scratch** — the `Curse.*` API: `CreateMenu` / `CreateSubMenu`, `Button`,
`CheckBox`, `ComboBox`, hover and selection state, per-menu styling
(`SetMenuFocusColor`, background/text/subtitle colors), scrolling with a max
option count, and menu-button sounds. Fewer features than Motion, but a real
reusable widget toolkit underneath them rather than a pile of draw calls.

## Why they're here

I keep these because the pattern I still work in started in these files: take
apart an undocumented host, then build a UI/render layer on top of it. Curse is
an immediate-mode UI toolkit for a game I didn't have the source to. Years
later I'd do the same move to a terminal. Same instinct, bigger host.

*Author credit inside the files reads "Sureffi"; the original handle has been
scrubbed.*
