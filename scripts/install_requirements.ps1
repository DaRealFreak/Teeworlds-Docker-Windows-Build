# install chocolatey, a windows package manager
Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression

# install our requirements for the compiling
choco install cygwin -y
choco install mingw -y
choco install git -y

# refresh the env
refreshenv

# add mingw, cygwin and git to the Path variable
[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\tools\mingw\bin', [EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\tools\mingw\bin', [System.EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\tools\cygwin\bin', [EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\tools\cygwin\bin', [System.EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\Program Files\Git\bin', [EnvironmentVariableTarget]::Machine)
[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\Program Files\Git\bin', [System.EnvironmentVariableTarget]::Machine)
