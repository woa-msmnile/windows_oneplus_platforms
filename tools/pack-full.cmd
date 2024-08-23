@echo off

mkdir ..\..\OnePlus-Drivers-Release
del ..\..\OnePlus-Drivers-Release\OnePlus-Drivers-Full.7z

mkdir OnePlus-Drivers-Full
mkdir OnePlus-Drivers-Full\apps
mkdir OnePlus-Drivers-Full\components
mkdir OnePlus-Drivers-Full\definitions
xcopy /cheriky ..\apps OnePlus-Drivers-Full\apps
xcopy /cheriky ..\components OnePlus-Drivers-Full\components
xcopy /cheriky ..\definitions OnePlus-Drivers-Full\definitions

"7z.exe" a -t7z -r ..\..\OnePlus-Drivers-Release\OnePlus-Drivers-Full.7z OnePlus-Drivers-Full\*

rmdir /Q /S OnePlus-Drivers-Full