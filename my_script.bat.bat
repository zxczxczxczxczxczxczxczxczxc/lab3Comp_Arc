
chcp 65001 > nul
rem Варіант 26
set target_dir=%*

cd /d "%target_dir%"

rem Режим подсказки
prompt Каталог %target_dir% 

dir/a "Не скрытая папка\справка_xcopy.txt"
if %errorlevel% neq 0 exit /b %errorlevel%
dir/a /s "Скрытая папка\copied_copyhelp.txt"
if %errorlevel% neq 0 exit /b %errorlevel%

prompt $P$G

pause

REM my_script.bat "C:/Лабораторные/Группа/ФИО/batch"