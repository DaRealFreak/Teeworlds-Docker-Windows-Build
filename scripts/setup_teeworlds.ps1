if ((Test-Path "c:/windows/temp/teeworlds/bam.lua") -eq $False)
{
    # clone sources if not provided
    git clone https://github.com/teeworlds/teeworlds.git c:/windows/temp/teeworlds
}

# go to the directory
cd c:/windows/temp/teeworlds
# clean the previous release
c:/windows/temp/bam/bam.exe -c
# generate the content, works since no compiling is involved
c:/windows/temp/bam/bam.exe content
# bam doesn't like every 2nd job, first job works fine, stopped here
c:/windows/temp/bam/bam.exe server