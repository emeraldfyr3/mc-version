# Minecraft Version Detector

Detect the running version of Minecraft: Java Edition. On load, the version will be put into scoreboard values on objective mcversion:
- major: The first number, e.g. "1" in "1.16.4"
- minor: The second number, e.g. "16" in "1.16.4"
- patch: The third number, e.g. "4" in "1.16.4"

## Minecraft Versions

The following versions can and cannot be detected by this data pack:

### Supported Versions

- 1.13
- 1.13.1
- 1.14
- 1.14.1
- 1.14.3
- 1.15
- 1.15.2
- 1.16
- 1.16.2

### Unsupported Versions

- 1.12.2 and below (does not detect any values)
- 1.13.2 (detected as 1.13.1)
- 1.14.2 (detected as 1.14.1)
- 1.14.4 (detected as 1.14.3)
- 1.15.1 (detected as 1.15)
- 1.16.1 (detected as 1.16)
- 1.16.3 (detected as 1.16.2)
- 1.16.4 (detected as 1.16.2)
- 1.17 and above
- Snapshots, pre-releases, release candidates, April Fools updates, and any other special versions
