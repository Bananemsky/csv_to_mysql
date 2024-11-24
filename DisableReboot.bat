for /f %%i in ('powershell "((get-date).Hour+18) %% 24"') do set startHour=%%i
for /f %%i in ('powershell "((get-date).Hour+12) %% 24"') do set endHour=%%i
 
reg add HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v ActiveHoursStart /t REG_DWORD /d %startHour% /f 
reg add HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings /v ActiveHoursEnd /t REG_DWORD /d %endHour% /f 