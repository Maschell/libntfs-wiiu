# libntfs for the Wii U [![Build Status](https://travis-ci.org/Maschell/libntfs-wiiu.svg)](https://travis-ci.org/Maschell/libntfs-wiiu)

## Usage
Link the application with:
```
-lntfs -liosuhax
```

## Dependencies
To be able to use libntfs for the Wii u, you need to install the following dependencies:

- [libiosuhax](https://github.com/dimok789/libiosuhax)

# Use the prebuilt files from a Docker image.
The image `wiiulegacy/libntfs` on [Docker Hub](https://hub.docker.com/r/wiiulegacy/libntfs/) provides a prebuilt library in the `/artifacts` directory. Copy it into your DevkitPPC portlibs folder.  

Example:  
```
COPY --from=wiiulegacy/libntfs:2013.1.13 /artifacts $DEVKITPRO/portlibs
```
