@echo off
title [A Bizzarre Journey Home: Hobo's Assault]
color 2F
if "%1" neq "" ( goto %1)
:Menu
cls
echo 1. BEGIN
echo 2. CREDITS
echo 3. EXIT
set /p answer=Type the number of your menu choice and press enter :
if %answer%==1 goto Begin
if %answer%==2 goto Credits
if %answer%==3 goto Exit
:Exit
cls
echo Thx 4 Playing!
pause
exit /b
:Credits
cls
echo Credits
echo.
echo Thank You For Playing [A Bizzarre Journey Home: Hobo's Assault]!
echo As this is the first game I've ever made for CMD, this was structured based on the wikihow guide for making a game for Windows CMD.
pause
goto Menu
:Begin
cls
echo You are walking down the road after leaving your boring 9-5 office job; unfortunately for you, you stayed late to finish work that was dumped onto you last minute and have finally left at the late our of 10 pm
echo As you walk back to your apartment in the bad part of town you're jumped by five scrappy looking ruffians, all armed with makeshift knives but one who carries a rather gross looking hot-dog
echo If you choose to fight, you stand to win as they appear to be drunk and innexperienced hobos
echo .
echo .
set /p answer=Do you fight or run?
if %answer%==fight goto HoboFight
if %answer%==run goto HoboRun
pause
:HoboFight
cls
echo Prepare to engage in fisticuffs!
echo All of the homeless men run towards you, some sccreaming about cocaine, others screeching about how their going to likely rape you after
set /p answer= Type 1 and press enter to continue your encounter!
if %answer%==1 goto HoboFightText
:HoboFightText
cls
echo You lunge at the hobos; they do the same, the one with the hot-dog menacingly shaking the greasy length of meat at you in a knife like manner
echo.
pause
goto HoboFightLoop
:HoboFightLoop
set /a num=%random%
if %num% gtr 4 goto HoboFightLoop
if %num% lss 1 goto HoboFightLoop
if %num%==1 goto HoboFightLose
if %num%==2 goto HoboFightWin
if %num%==3 goto HoboFightWin
if %num%==4 goto HoboFightWin
:HoboFightLose
cls
echo you swing at the Hobos and are struck down by a flurry of slashes and slaps upon your face by a very greasy hot-dog
echo You were defeated, and very likely raped. Would you like to play again?
set /p answer [Y][N]
if %answer%==Y goto Menu
if %answer%==N goto Exit
pause
:HoboFightWin
cls
echo You manage to fend off the hobos by commandeering one of their knives and the fifth hobo's hot-dog, they run away in fear
echo .
echo .
echo .
echo You have defeated the hobos and can now continue along your journey home
echo You can continue your journey in the next installment of A Bizzare Journey Home.
pause
goto Credits