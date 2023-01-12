# nuke [![Tests](https://github.com/HUMORCE/nuke/actions/workflows/ci.yml/badge.svg)](https://github.com/HUMORCE/nuke/actions/workflows/ci.yml) [![Excavator](https://github.com/HUMORCE/nuke/actions/workflows/excavator.yml/badge.svg)](https://github.com/HUMORCE/nuke/actions/workflows/excavator.yml)

## Add the bucket to Scoop

```pwsh
scoop bucket add nuke https://github.com/HUMORCE/nuke
```

## Install apps from Nuke bucket

```pwsh
# for unique apps.
scoop install <app>

# for duplicate apps with other buckets.
scoop install nuke/<app>
```
