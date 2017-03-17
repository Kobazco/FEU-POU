echo off
cd %~dp0
cd ..
echo on

Core D FE8 ToEnd 0xA39D00 none -input:%1 "-output:%~dp1Prologue.txt" -addEndGuards
Core D FE8 ToEnd 0xA39D18 none -input:%1 "-output:%~dp1Ch1.txt" -addEndGuards
Core D FE8 ToEnd 0xA39DB4 none -input:%1 "-output:%~dp1Ch2.txt" -addEndGuards
Core D FE8 ToEnd 0xA39F90 none -input:%1 "-output:%~dp1Ch3.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A118 none -input:%1 "-output:%~dp1Ch4.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A2D8 none -input:%1 "-output:%~dp1Ch5.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A534 none -input:%1 "-output:%~dp1Ch6.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A620 none -input:%1 "-output:%~dp1Ch7.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A700 none -input:%1 "-output:%~dp1Ch8.txt" -addEndGuards

Core D FE8 ToEnd 0xA3A7EC none -input:%1 "-output:%~dp1Ch9Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A9EC none -input:%1 "-output:%~dp1Ch10Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3AB68 none -input:%1 "-output:%~dp1Ch12Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3ABC8 none -input:%1 "-output:%~dp1Ch13Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3AD40 none -input:%1 "-output:%~dp1Ch14Eir.txt" -addEndGuards

Core D FE8 ToEnd 0xA3AF30 none -input:%1 "-output:%~dp1Ch9Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B10C none -input:%1 "-output:%~dp1Ch10Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B1F0 none -input:%1 "-output:%~dp1Ch12Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B250 none -input:%1 "-output:%~dp1Ch13Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B338 none -input:%1 "-output:%~dp1Ch14Eph.txt" -addEndGuards

Core D FE8 ToEnd 0xA3B58C none -input:%1 "-output:%~dp1Ch15Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B678 none -input:%1 "-output:%~dp1Ch16Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B808 none -input:%1 "-output:%~dp1Ch17Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B944 none -input:%1 "-output:%~dp1Ch18Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3BAC0 none -input:%1 "-output:%~dp1Ch19Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3BC8C none -input:%1 "-output:%~dp1Ch20Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3BD70 none -input:%1 "-output:%~dp1Final1Eir.txt" -addEndGuards

Core D FE8 ToEnd 0xA3BE14 none -input:%1 "-output:%~dp1Ch15Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3BFF4 none -input:%1 "-output:%~dp1Ch16Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C184 none -input:%1 "-output:%~dp1Ch17Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C2BC none -input:%1 "-output:%~dp1Ch18Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C438 none -input:%1 "-output:%~dp1Ch19Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C604 none -input:%1 "-output:%~dp1Ch20Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C6E8 none -input:%1 "-output:%~dp1Final1Eph.txt" -addEndGuards

Core D FE8 ToEnd 0xA3C888 none -input:%1 "-output:%~dp1LordsSplit.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C894 none -input:%1 "-output:%~dp1Ch5x.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C89C none -input:%1 "-output:%~dp1Final2Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C8A4 none -input:%1 "-output:%~dp1Final2Eph.txt" -addEndGuards
Core D FE8 ToEnd 0xA3C904 none -input:%1 "-output:%~dp1Ch11Eir.txt" -addEndGuards
Core D FE8 ToEnd 0xA3CA2C none -input:%1 "-output:%~dp1Ch11Eph.txt" -addEndGuards

Core D FE8 ToEnd 0xA3B460 none -input:%1 "-output:%~dp1MelkaenCoast.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B46C none -input:%1 "-output:%~dp1Valni1.txt" -addEndGuards
Core D FE8 ToEnd 0xA3B4C4 none -input:%1 "-output:%~dp1Lagdou1.txt" -addEndGuards

Core D FE8 ToEnd 0xA3974C none -input:%1 "-output:%~dp1A3974C.txt" -addEndGuards
Core D FE8 ToEnd 0xA3A4D0 none -input:%1 "-output:%~dp1A3A4D0.txt" -addEndGuards

pause