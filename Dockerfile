# tested with 1803 which crashed on execution of .exe files, so we are using the 2016 LTS version here
FROM microsoft/windowsservercore
LABEL maintainer="steffen.keuper@web.de"

# Make sure we're in temp for the downloads
WORKDIR c:/windows/temp
VOLUME ["c:/windows/temp/teeworlds"]

# copy the scripts directory to the container
ADD scripts C:/windows/temp/scripts

# Switch to PowerShell
SHELL ["powershell", "-command"]

# execute our scripts, easier to install everything with added powershell scripts
RUN "./scripts/install_requirements.ps1"
RUN "./scripts/setup_bam.ps1"
RUN "./scripts/setup_teeworlds.ps1"

# our entrypoint
CMD powershell