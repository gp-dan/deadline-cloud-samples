
set "C4D_PLUGINS_DIRECTORY=%PREFIX%\cinema4d\Plug-ins"
mkdir "%C4D_PLUGINS_DIRECTORY%"

REM Copy all dirs
robocopy "%SRC_DIR%" "%C4D_PLUGINS_DIRECTORY%" /E /NFL /NDL /NJH /NP
