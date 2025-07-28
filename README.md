# Rojo Template for Roblox Game Development

A template for starting a new Roblox project using Rojo. This template is designed to help you quickly set up a Roblox game project with a structured file system and essential dependencies.

## Getting Started

### Prerequisites

#### Roblox
- [Roblox Studio](https://create.roblox.com/docs/studio/setup)

Install roblox studio from the [Roblox website](https://create.roblox.com/docs/studio/setup). If you're on Linux, install [Vinegar](https://flathub.org/apps/org.vinegarhq.Vinegar).

#### Tools
- [Wally](https://github.com/UpliftGames/wally) package manager
- [Wally-Package-Types](https://github.com/JohnnyMorganz/wally-package-types) for fixing Wally's type exporting.
- [Rojo](https://github.com/rojo-rbx/rojo) for syncing files to Roblox Studio

All of these tools can be easily installed via [https://github.com/rojo-rbx/rokit](rokit) or [https://github.com/LPGhatguy/aftman](aftman).

### Installation

1. Clone this repository
2. Install CLI dependencies:
   ```bash
   rokit install
   ```
   or
   ```bash
   aftman install
   ```
3. Install wally dependencies:
- Use the vscode task `Install Wally Dependencies`
- Or, execute the appropriate install script (`install.ps1` on Windows, `install.sh` on Linux/MacOS)

### Note on Installing Dependencies

We have to use an install script instead of just `wally install` because Wally doesn't re-export types from the packages.

**Installing dependencies this way will crash Rojo**, so make sure to stop Rojo before running it and restart it afterwards.

## Development

Once you have installed all the dependencies, the workflow is just like in any other Rojo project:
1. Run the Rojo server from the menu or with `rojo serve`.
2. Open Roblox Studio and open the game.
3. Use the Roblox Studio plugin to connect to the Rojo server.
4. Work on your new game!