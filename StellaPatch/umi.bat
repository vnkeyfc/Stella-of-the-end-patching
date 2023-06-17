@echo off
setlocal enabledelayedexpansion


set "listFile=%CD%\list.txt"
set "directednewFolder=%CD%\_temp"
set "oldDataFolder=%CD%\old_data"
set "GamePath=%CD%\Stella_of_the_end_Vietnamese_Patch.exe"

for /d %%D in ("%CD%\*") do (
    set "currentFolder=%%~nxD"
    set "newFolder=%%~dpD!currentFolder!_temp"

    rem Create a new folder if there are matching files in the current folder
    for %%F in ("%%~D\*") do (
        if %%~xF neq "" (
            set "currentFile=%%~nxF"

            rem Check if the current file name matches any name in the list file
            findstr /i /x /c:"!currentFile!" "%listFile%" >nul

            if not errorlevel 1 (
                if not exist "!newFolder!" (
                    mkdir "!newFolder!"
                    echo Created folder: "!newFolder!"
                )
                move "%%F" "!newFolder!"
                echo Copied file: "%%F" to "!newFolder!"
            )
        )
    )
)


rem Create the new folder if it doesn't exist
if not exist "%directednewFolder%" (
    mkdir "%directednewFolder%"
    echo Created folder: %directednewFolder%
)

for %%F in ("%CD%\*") do (
    if %%~xF neq "" (
        set "currentFile=%%~nxF"
        
        rem Check if the current file name matches any name in the list file
        findstr /i /x /c:"!currentFile!" "%listFile%" >nul
        
        if not errorlevel 1 (
            move "%%F" "%directednewFolder%"
            echo Copied file: "%%F" to "%directednewFolder%"
        )
    )
)

if not exist "%oldDataFolder%" (
    mkdir "%oldDataFolder%"
    echo Created folder: %oldDataFolder%
)

for /d %%D in ("%CD%\*_temp") do (
    move "%%D" "%oldDataFolder%"
    echo Moved folder: "%%D" to "%oldDataFolder%"
)

start "" "%GamePath%"

echo Processing complete.
exit