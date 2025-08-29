rem stage xparticles and then copy to the plugins_x dir in post-link.bat
set "C4D_STAGING_DIRECTORY=%PREFIX%\xparticles_staging"
mkdir "%C4D_STAGING_DIRECTORY%"

xcopy "%SRC_DIR%" "%C4D_STAGING_DIRECTORY%" /E /I /H /Y

