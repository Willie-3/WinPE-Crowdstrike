# WinPE-Crowdstrike
Automated bootable WinPE USB to remove C-00000921.sys

This WinPE OS automatically removes C-00000921.sys using the startnet.cmd file in WinPE.

# To Use
Download the latest release from the releases.
Burn the .iso file to a USB drive using Rufus.
Boot from the USB Drive.

# Make from Source

Download the Windows ADK and the WinPE ADK add-on from [here](https://learn.microsoft.com/en-us/windows-hardware/get-started/adk-install).
Open the "Deployment and Imaging Tools Enviroment"
Run _copype {architecture} {working_dir}_ with {architecture} and {working_dir} replaced with their respective values.
Mount the WinPE image using _Dism /Mount-Image /ImageFile:"C:\WinPE_amd64\media\sources\boot.wim" /index:1 /MountDir:"C:\WinPE_amd64\mount"_
Replace the Windows\System32\startnet.cmd with the modified one.
Compile WinPE using _MakeWinPEMedia /iso {working_dir} {iso location}_
Flash .iso to USB using Rufus.
