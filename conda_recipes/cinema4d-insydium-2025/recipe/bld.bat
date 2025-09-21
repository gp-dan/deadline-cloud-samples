rem stage insydium and then copy to the user plugins_x dir in post-link.bat
rem set "C4D_STAGING_DIRECTORY=%PREFIX%\insydium_staging"
rem mkdir "%C4D_STAGING_DIRECTORY%"
rem xcopy "%SRC_DIR%" "%C4D_STAGING_DIRECTORY%" /E /I /H /Y

rem To install the plugin we copy it into the Cinema 4D plugins dir
set "C4D_PLUGINS_DIRECTORY=%PREFIX%\cinema4d\plugins"
mkdir "%C4D_PLUGINS_DIRECTORY%"

rem /E recursive, /I assume destintion dir, /H copy hidden, /Y suppress prompt
xcopy "%SRC_DIR%" "%C4D_PLUGINS_DIRECTORY%" /E /I /H /Y

