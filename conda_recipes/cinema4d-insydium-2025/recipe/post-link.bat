rem Copy staged plugin to the user plugins_x dir
rem for /d %%D in ("%APPDATA%\Maxon\cinema4d_*_x") do (
rem     xcopy /E /I /H /Y "%PREFIX%\insydium_staging" "%%D\plugins\"
rem )
rem Pre-emptively initialize connction to license server
curl "https://license.insydium.net"
