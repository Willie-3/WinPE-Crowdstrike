@ECHO OFF
wpeinit
cd C:\Windows\System32\drivers\Crowdstrike\
echo Navigating to directory of faulty driver.
del *291*.sys
echo Deleted faulty driver C-00000921.sys
echo Pressing any key to continue will reboot the system. To remain in Windows PE, press Ctrl+C, Y, and Enter.
pause
shutdown -r -t 0
