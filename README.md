# Teeworlds Docker Windows Build
This Project was planned to provide a clean Windows build system for the Open-Source game Teeworlds.
It is using the base image `microsoft/windowsservercore:latest` and installs `cygwin`, `mingw` and `git` with the
Windows package manager `chocolatey`.  
It additionally clones and compiles the build system `bam` which is used normally to compile Teeworlds.

## Usage
You can build the image with `docker build -t tw-build ./` and run the container with `docker run -ti --rm tw-build`

## Status
The build system hangs itself up on the 2nd step of everything involving actually compiling code.
Because of this reason I didn't include the download and configuration step of the external dependencies SDL2 and freetype.  
In case anyone knows why bam is hanging itself I'll gladly complete the rest of the script.