
REM The package build recipe for After Effects installs into %PREFIX%\cinema4d.
set "C4D_PLUGINS_DIRECTORY=%PREFIX%\cinema4d\plugins"
mkdir "%C4D_PLUGINS_DIRECTORY%"

REM In order to keep this recipe as easy and simple to build as possible, we directly
REM use that value here. Alternatively, we could add a build dependency to cinema4d
REM and use %C4D_LOCATION% value defined by the After Effects package.

REM Copy all plugin files.
REM copy "%SRC_DIR%\*.aex" "%C4D_PLUGINS_DIRECTORY%"
xcopy "%SRC_DIR%" "%C4D_PLUGINS_DIRECTORY%" /E /I /H /Y

REM Verify that at least one .aex file was copied
REM if exist "%C4D_PLUGINS_DIRECTORY%\*.aex" (
REM     exit /b 0
REM ) else (
REM     echo No *.aex plugin files were copied into the After Effects %C4D_PLUGINS_DIRECTORY%
REM     echo Check that the input directory for plugins contains at least one .aex file.
REM     exit /b 1
REM )
