# Minecraft Version Detector

Detect the running version of Minecraft: Java Edition. On load, the version will be put into scoreboard values on objective mcversion:
- major: The first number, e.g. "1" in "1.16.4"
- minor: The second number, e.g. "16" in "1.16.4"
- patch: The third number, e.g. "4" in "1.16.4"

## How to Use

The detector will run automatically when the world loads, or after `/reload`. The detected version will be saved in scoreboard as detailed above. You can also run `/function mcversion:tell` to see the current version.

## Detected Versions

Versions in parentheses are detected as the listed version instead of as themselves. Some checks have extra requirements, explained below.

- **1.13**
  - **1.13.1** (1.13.2)
- **1.14**
  - **1.14.1** \[delayed\] \[entities\] \[player\]
  - **1.14.2** \[delayed\] \[entities\] \[player\]
  - **1.14.3**
  - **1.14.4**
- **1.15** (1.15.1)
  - **1.15.2**
- **1.16** (1.16.1)
  - **1.16.2**
  - **1.16.3** (1.16.4) \[delayed\] \[entities\] \[player\]
- **1.17**

### Extra Requirements

Disabling a requirement may disable any checks that depend on it. However, if a check determines that it can run without the requirement, it will still run.

- **blocks**
  - To disable: `/scoreboard players set disable_blocks mcversion 1`
  - The check requires modifying at least one block.
- **delayed**
  - To disable: `/scoreboard players set disable_delayed mcversion 1`
  - The check will not be completed in the same tick as the data pack is loaded.
  - The next highest non-delayed version will be detected until the check is completed. For example, if the check for 1.14.1 is delayed, the detected version will temporarily be 1.14.0.
- **difficulty**
  - The check will not run on Peaceful difficulty.
- **entities**
  - To disable: `/scoreboard players set disable_entities mcversion 1`
  - The check requires summoning at least one entity.
- **player**
  - To disable: `/scoreboard players set disable_player mcversion 1`
  - The check requires a player to be in the world.
  - If there is no player when the data pack is loaded, the check will wait for one to join.
