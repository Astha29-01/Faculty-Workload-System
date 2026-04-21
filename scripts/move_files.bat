@echo off

echo ===============================
echo Moving CSV files...
echo ===============================

move ..\raw_data\*.csv ..\processed_data\

echo Files moved successfully.

echo %date% %time% >> ..\logs\file_log.txt

echo Operation logged.

pause