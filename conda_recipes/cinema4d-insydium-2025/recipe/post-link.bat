rem Copy staged plugin to the user plugins_x dir
for /d %%D in ("%APPDATA%\Maxon\*2025*_x") do (
    xcopy "%PREFIX%\insydium_staging" "%%D\" /E /I /H /Y
)
dir "%APPDATA%\Maxon\*2025*_x\*"
rem Pre-emptively initialize connction to license server
curl "https://license.insydium.net"
