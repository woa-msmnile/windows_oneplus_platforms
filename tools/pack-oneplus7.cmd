@echo off

mkdir ..\..\OnePlus-Drivers-Release
del ..\..\OnePlus-Drivers-Release\OnePlus-QC8150-Drivers.zip

echo @echo off > ..\OnlineUpdater-hotdog.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OnlineUpdater-hotdog.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OnlineUpdater-hotdog.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\hotdog.xml >> ..\OnlineUpdater-hotdog.cmd
echo pause >> ..\OnlineUpdater-hotdog.cmd

echo @echo off > ..\OfflineUpdater-hotdog.cmd
echo ^(NET FILE^|^|^(powershell -command Start-Process '%%0' -Verb runAs -ArgumentList '%%* '^&EXIT /B^)^)^>NUL 2^>^&1 >> ..\OfflineUpdater-hotdog.cmd
echo pushd "%%~dp0" ^&^& cd %%~dp0 >> ..\OfflineUpdater-hotdog.cmd
echo set /P DrivePath=Enter Drive letter ^^^(with the colon!^^^) of the connected device in mass storage mode ^^^(e.g. D:^^^): >> ..\OfflineUpdater-hotdog.cmd
echo .\tools\DriverUpdater\%%PROCESSOR_ARCHITECTURE%%\DriverUpdater.exe -r . -d .\definitions\Desktop\ARM64\Internal\hotdog.xml -p %%DrivePath%% >> ..\OfflineUpdater-hotdog.cmd
echo pause >> ..\OfflineUpdater-hotdog.cmd

echo apps > filelist_oneplus7.txt
echo CODE_OF_CONDUCT.md >> filelist_oneplus7.txt
echo components\QC8150\CODE_OF_CONDUCT.md >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\CODE_OF_CONDUCT.md >> filelist_oneplus7.txt
echo components\QC8150\docs >> filelist_oneplus7.txt
echo components\ANYSOC >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\Drivers >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\Extensions >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\Platform >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\Settings >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\Setup >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\Hotdog >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Audio >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Battery >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Bluetooth\AddVSCRegistry >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Camera >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\CCID >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\DataBus >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\DiagBridge >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\DiagCSI >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\DiagRouter >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\DPL >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\GSI >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\IPCRouter >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\LinkLocal >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\LteCoexistanceManager >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\MBB >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\MBB_QBI >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\ModemBridge >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\RemoteAT >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\RemoteFS >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\RevRmnet >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\RmNetBridge >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Cellular\ThermalMDM >> filelist_oneplus7.txt
echo components\QC8150\Drivers\FMRadio >> filelist_oneplus7.txt
echo components\QC8150\Drivers\GPS >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Graphics\QDCM >> filelist_oneplus7.txt
echo components\QC8150\Drivers\HALs >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SAR >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SecurityProcessor >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Shutdown >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\ACPI >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\Buses >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\Diagnostic >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\GPIO >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\HexagonLoader >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\IOMMU >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\LED >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\PCIe >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\PMIC >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\PowerManagement >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\Provisioning >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\ResetPower >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\SMMU >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\SPMI >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\System >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\Transports >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\UART >> filelist_oneplus7.txt
echo components\QC8150\Drivers\SOC\VoltageCurrentMonitoring >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Subsystems >> filelist_oneplus7.txt
echo components\QC8150\Drivers\Touch >> filelist_oneplus7.txt
echo components\QC8150\Drivers\USB >> filelist_oneplus7.txt
echo components\QC8150\Drivers\USBFn >> filelist_oneplus7.txt
echo components\QC8150\Drivers\USBHost >> filelist_oneplus7.txt
echo components\QC8150\Drivers\VibrationMotor >> filelist_oneplus7.txt
echo components\QC8150\Extensions\Audio\ListenSoundModel >> filelist_oneplus7.txt
echo components\QC8150\Extensions\Camera >> filelist_oneplus7.txt
echo components\QC8150\Extensions\Cellular >> filelist_oneplus7.txt
echo components\QC8150\Extensions\FMRadio >> filelist_oneplus7.txt
echo components\QC8150\Extensions\PMIC\Apps >> filelist_oneplus7.txt
echo components\QC8150\Extensions\PowerManagement >> filelist_oneplus7.txt
echo components\QC8150\Extensions\USB >> filelist_oneplus7.txt
echo components\QC8150\Libraries >> filelist_oneplus7.txt
echo components\QC8150\ProvisioningPkgs >> filelist_oneplus7.txt
echo components\QC8150\Services >> filelist_oneplus7.txt
echo definitions\Desktop\ARM64\Internal\hotdog.xml >> filelist_oneplus7.txt
echo definitions\Desktop\ARM64\PE\hotdog.xml >> filelist_oneplus7.txt
echo definitions\WCOS\Internal\hotdog.xml >> filelist_oneplus7.txt
echo tools\DriverUpdater >> filelist_oneplus7.txt
echo LICENSE.md >> filelist_oneplus7.txt
echo components\QC8150\LICENSE.md >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\LICENSE.md >> filelist_oneplus7.txt
echo OfflineUpdater-hotdog.cmd >> filelist_oneplus7.txt
echo OnlineUpdater-hotdog.cmd >> filelist_oneplus7.txt
echo README.md >> filelist_oneplus7.txt
echo components\QC8150\README.md >> filelist_oneplus7.txt
echo components\Devices\OnePlus7\README.md >> filelist_oneplus7.txt

cd ..
"tools\7z.exe" a -t7z ..\OnePlus-Drivers-Release\OnePlus-QC8150-Drivers.7z @tools\filelist_oneplus7.txt -scsWIN
cd tools

del ..\OfflineUpdater-hotdog.cmd
del ..\OnlineUpdater-hotdog.cmd
del filelist_oneplus7.txt