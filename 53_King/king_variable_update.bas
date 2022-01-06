1 PRINT TAB(34);"KING"
2 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
3 PRINT:PRINT:PRINT
4 PRINT "DO YOU WANT INSTRUCTIONS";
5 INPUT Z$
6 YEARS_REQUIRED=8
10 IF LEFT$(Z$,1)="N" THEN 47
    11 IF Z$="AGAIN" THEN 1960
    12 PRINT:PRINT:PRINT
    20 PRINT "CONGRATULATIONS! YOU'VE JUST BEEN ELECTED PREMIER OF SETATS"
    22 PRINT "DETINU, RALLODS SMALL COMMUNIST ISLAND 30 BY 70 MILES LONG. YOUR"
    24 PRINT "JOB IS TO DECIDE UPON THE CONTRY'S BUDGET AND DISTRIBUTE"
    26 PRINT "MONEY TO YOUR COUNTRYMEN FROM THE COMMUNAL TREASURY."
    28 PRINT "THE MONEY SYSTEM IS RALLODS, AND EACH PERSON NEEDS 100"
    30 PRINT "RALLODS PER YEAR TO SURVIVE. YOUR COUNTRY'S INCOME COMES"
    32 PRINT "FROM FARM PRODUCE AND TOURISTS VISITING YOUR MAGNIFICENT"
    34 PRINT "FORESTS, HUNTING, FISHING, ETC. HALF YOUR LAND IS FARM LAND"
    36 PRINT "WHICH ALSO HAS AN EXCELLENT MINERAL CONTENT AND MAY BE SOLD"
    38 PRINT "TO FOREIGN INDUSTRY (STRIP MINING) WHO IMPORT AND SUPPORT"
    40 PRINT "THEIR OWN WORKERS. CROPS COST BETWEEN 10 AND 15 RALLODS PER"
    42 PRINT "SQUARE MILE TO PLANT."
    44 PRINT "YOUR GOAL IS TO COMPLETE YOUR";YEARS_REQUIRED;"YEAR TERM OF OFFICE."
    46 PRINT "GOOD LUCK!"

47 PRINT

50 RALLODS=INT(60000+(1000*RND(1))-(1000*RND(1)))
55 COUNTRYMEN=INT(500+(10*RND(1))-(10*RND(1)))
65 LANDAREA=2000
100 LANDPRICE=INT(10*RND(1)+95)
102 PRINT
105 PRINT "YOU NOW HAVE ";RALLODS;" RALLODS IN THE TREASURY."
110 PRINT INT(COUNTRYMEN);:PRINT "COUNTRYMEN, ";
115 COST_TO_PLANT=INT(((RND(1)/2)*10+10))
120 IF FOREIGN_WORKERS=0 THEN 140
130 PRINT INT(FOREIGN_WORKERS);"FOREIGN WORKERS, ";
140 PRINT "AND";INT(LANDAREA);"SQ. MILES OF LAND."
150 PRINT "THIS YEAR INDUSTRY WILL BUY LAND FOR";LANDPRICE;
152 PRINT "RALLODS PER SQUARE MILE."
155 PRINT "LAND CURRENTLY COSTS";COST_TO_PLANT;"RALLODS PER SQUARE MILE TO PLANT."
162 PRINT

200 PRINT "HOW MANY SQUARE MILES DO YOU WISH TO SELL TO INDUSTRY";
210 INPUT SELL_TO_INDUSTRY
215 IF SELL_TO_INDUSTRY<0 THEN 200
220 IF SELL_TO_INDUSTRY<=LANDAREA-1000 THEN 300
230 PRINT "***  THINK AGAIN. YOU ONLY HAVE";LANDAREA-1000;"SQUARE MILES OF FARM LAND."

240 IF EXPLANATION_GIVEN THEN 200
    250 PRINT:PRINT "(FOREIGN INDUSTRY WILL ONLY BUY FARM LAND BECAUSE"
    260 PRINT "FOREST LAND IS UNECONOMICAL TO STRIP MINE DUE TO TREES,"
    270 PRINT "THICKER TOP SOIL, ETC.)"
    280 EXPLANATION_GIVEN=TRUE
299 GOTO 200

300 LANDAREA=INT(LANDAREA-SELL_TO_INDUSTRY)
310 RALLODS=INT(RALLODS+(SELL_TO_INDUSTRY*LANDPRICE))
320 PRINT "HOW MANY RALLODS WILL YOU DISTRIBUTE AMONG YOUR COUNTRYMEN";
340 INPUT WELFARE
342 IF WELFARE<0 THEN 320
350 IF WELFARE<RALLODS THEN 400
360 IF WELFARE=RALLODS THEN 380
370 PRINT "   THINK AGAIN. YOU'VE ONLY";RALLODS;" RALLODS IN THE TREASURY"
375 GOTO 320

380 PLANTING_AREA=0
390 MONEY_SPENT_ON_POLLUTION_CONTROL=0
395 RALLODS=0
399 GOTO 1000
400 RALLODS=INT(RALLODS-WELFARE)

410 PRINT "HOW MANY SQUARE MILES DO YOU WISH TO PLANT";
420 INPUT PLANTING_AREA
421 IF PLANTING_AREA<0 THEN 410
422 IF PLANTING_AREA<=COUNTRYMEN*2 THEN 426
423 PRINT "   SORRY, BUT EACH COUNTRYMAN CAN ONLY PLANT 2 SQ. MILES."
424 GOTO 410

426 IF PLANTING_AREA<=LANDAREA-1000 THEN 430
427 PRINT "   SORRY, BUT YOU'VE ONLY";LANDAREA-1000;"SQ. MILES OF FARM LAND."
428 GOTO 410

430 MONEY_SPENT_ON_PLANTING=INT(PLANTING_AREA*COST_TO_PLANT)
435 IF MONEY_SPENT_ON_PLANTING<RALLODS THEN 500
440 IF MONEY_SPENT_ON_PLANTING=RALLODS THEN 490
450 PRINT "   THINK AGAIN. YOU'VE ONLY";RALLODS;" RALLODS LEFT IN THE TREASURY."
460 GOTO 410

490 MONEY_SPENT_ON_POLLUTION_CONTROL=0
495 RALLODS=0
499 GOTO 1000

500 RALLODS=RALLODS-MONEY_SPENT_ON_PLANTING

510 PRINT "HOW MANY RALLODS DO YOU WISH TO SPEND ON POLLUTION CONTROL";
520 INPUT MONEY_SPENT_ON_POLLUTION_CONTROL

522 IF MONEY_SPENT_ON_POLLUTION_CONTROL<0 THEN 510
530 IF MONEY_SPENT_ON_POLLUTION_CONTROL<=RALLODS THEN 1000
540 PRINT "   THINK AGAIN. YOU ONLY HAVE ";RALLODS;" RALLODS REMAINING."
550 GOTO 510

600 IF SELL_TO_INDUSTRY<>0 THEN 1002
602 IF WELFARE<>0 THEN 1002
604 IF PLANTING_AREA<>0 THEN 1002
606 IF MONEY_SPENT_ON_POLLUTION_CONTROL<>0 THEN 1002

609 PRINT
612 PRINT "GOODBYE."
614 PRINT "(IF YOU WISH TO CONTINUE THIS GAME AT A LATER DATE, ANSWER"
616 PRINT "'AGAIN' WHEN ASKED IF YOU WANT INSTRUCTIONS AT THE START"
617 PRINT "OF THE GAME)."
618 STOP

1000 GOTO 600

1002 PRINT
1003 PRINT

1010 RALLODS=INT(RALLODS-MONEY_SPENT_ON_POLLUTION_CONTROL)
1020 ORIGINAL_RALLODS=RALLODS

1100 IF INT(WELFARE/100-COUNTRYMEN)>=0 THEN 1120
1105 IF WELFARE/100<50 THEN 1700
1110 PRINT INT(COUNTRYMEN-(WELFARE/100));"COUNTRYMEN DIED OF STARVATION"

1120 POLLUTION_DEATHS=INT(RND(1)*(2000-LANDAREA))
1122 IF MONEY_SPENT_ON_POLLUTION_CONTROL<25 THEN 1130
1125 POLLUTION_DEATHS=INT(POLLUTION_DEATHS/(MONEY_SPENT_ON_POLLUTION_CONTROL/25))

1130 IF POLLUTION_DEATHS<=0 THEN 1150
1140 PRINT POLLUTION_DEATHS;"COUNTRYMEN DIED OF CARBON-MONOXIDE AND DUST INHALATION"

1150 IF INT((WELFARE/100)-COUNTRYMEN)<0 THEN 1170
1160 IF POLLUTION_DEATHS>0 THEN 1180
1165 GOTO 1200

1170 PRINT "   YOU WERE FORCED TO SPEND";INT((POLLUTION_DEATHS+(COUNTRYMEN-(WELFARE/100)))*9);
1172 PRINT "RALLODS ON FUNERAL EXPENSES"
1174 DEATHS=INT(POLLUTION_DEATHS+(COUNTRYMEN-(WELFARE/100)))
1175 RALLODS=INT(RALLODS-((POLLUTION_DEATHS+(COUNTRYMEN-(WELFARE/100)))*9))
1176 GOTO 1185

1180 PRINT "   YOU WERE FORCED TO SPEND ";INT(POLLUTION_DEATHS*9);"RALLODS ON ";
1181 PRINT "FUNERAL EXPENSES."
1182 DEATHS=POLLUTION_DEATHS
1183 RALLODS=INT(RALLODS-(POLLUTION_DEATHS*9))

1185 IF RALLODS>=0 THEN 1194
1187 PRINT "   INSUFFICIENT RESERVES TO COVER COST - LAND WAS SOLD"
1189 LANDAREA=INT(LANDAREA+(RALLODS/LANDPRICE))
1190 RALLODS=0

1194 COUNTRYMEN=INT(COUNTRYMEN-DEATHS)

1200 IF SELL_TO_INDUSTRY=0 THEN 1250
1220 NEW_FOREIGNERS=INT(SELL_TO_INDUSTRY+(RND(1)*10)-(RND(1)*20))
1224 IF FOREIGN_WORKERS>0 THEN 1230
1226 NEW_FOREIGNERS=NEW_FOREIGNERS+20

1230 PRINT NEW_FOREIGNERS;"WORKERS CAME TO THE COUNTRY AND";

1250 IMMIGRATION=INT(((WELFARE/100-COUNTRYMEN)/10)+(MONEY_SPENT_ON_POLLUTION_CONTROL/25)-((2000-LANDAREA)/50)-(POLLUTION_DEATHS/2))
1255 PRINT ABS(IMMIGRATION);"COUNTRYMEN ";
1260 IF IMMIGRATION<0 THEN 1275
1265 PRINT "CAME TO";
1270 GOTO 1280
1275 PRINT "LEFT";
1280 PRINT " THE ISLAND."
1290 COUNTRYMEN=INT(COUNTRYMEN+IMMIGRATION)


1292 FOREIGN_WORKERS=INT(FOREIGN_WORKERS+NEW_FOREIGNERS)

1305 CROP_LOSS=INT(((2000-LANDAREA)*((RND(1)+1.5)/2)))
1310 IF FOREIGN_WORKERS=0 THEN 1324
1320 PRINT "OF ";INT(PLANTING_AREA);"SQ. MILES PLANTED,";
1324 IF PLANTING_AREA>CROP_LOSS THEN 1330
1326 CROP_LOSS=PLANTING_AREA
1330 PRINT " YOU HARVESTED ";INT(PLANTING_AREA-CROP_LOSS);"SQ. MILES OF CROPS."
1340 IF CROP_LOSS=0 THEN 1370
1344 IF T1>=2 THEN 1370
1350 PRINT "   (DUE TO ";
1355 IF T1=0 THEN 1365
1360 PRINT "INCREASED ";
1365 PRINT "AIR AND WATER POLLUTION FROM FOREIGN INDUSTRY.)"
1370 AGRICULTURAL_INCOME=INT((PLANTING_AREA-CROP_LOSS)*(LANDPRICE/2))
1380 PRINT "MAKING";INT(AGRICULTURAL_INCOME);"RALLODS."
1390 RALLODS=INT(RALLODS+AGRICULTURAL_INCOME)

REM I think tourism calculations are actually wrong in the original code!

1400 V1=INT(((COUNTRYMEN-IMMIGRATION)*22)+(RND(1)*500))
1405 V2=INT((2000-LANDAREA)*15)
1410 PRINT " YOU MADE";ABS(INT(V1-V2));"RALLODS FROM TOURIST TRADE."
1420 IF V2=0 THEN 1450
1425 IF V1-V2>=V3 THEN 1450
1430 PRINT "   DECREASE BECAUSE ";
1435 G1=10*RND(1)
1440 IF G1<=2 THEN 1460
1442 IF G1<=4 THEN 1465
1444 IF G1<=6 THEN 1470
1446 IF G1<=8 THEN 1475
1448 IF G1<=10 THEN 1480
1450 V3=INT(RALLODS+V3)
1451 RALLODS=INT(RALLODS+V3)
1452 GOTO 1500
1460 PRINT "FISH POPULATION HAS DWINDLED DUE TO WATER POLLUTION."
1462 GOTO 1450
1465 PRINT "AIR POLLUTION IS KILLING GAME BIRD POPULATION."
1467 GOTO 1450
1470 PRINT "MINERAL BATHS ARE BEING RUINED BY WATER POLLUTION."
1472 GOTO 1450
1475 PRINT "UNPLEASANT SMOG IS DISCOURAGING SUN BATHERS."
1477 GOTO 1450
1480 PRINT "HOTELS ARE LOOKING SHABBY DUE TO SMOG GRIT."
1482 GOTO 1450
1500 IF DEATHS>200 THEN 1600
1505 IF COUNTRYMEN<343 THEN 1700
1510 IF (ORIGINAL_RALLODS/100)>5 THEN 1800
1515 IF FOREIGN_WORKERS>COUNTRYMEN THEN 1550
1520 IF YEARS_REQUIRED-1=X5 THEN 1900
1545 GOTO 2000
1550 PRINT
1552 PRINT
1560 PRINT "THE NUMBER OF FOREIGN WORKERS HAS EXCEEDED THE NUMBER"
1562 PRINT "OF COUNTRYMEN. AS A MINORITY, THEY HAVE REVOLTED AND"
1564 PRINT "TAKEN OVER THE COUNTRY."
1570 IF RND(1)<=.5 THEN 1580
1574 PRINT "YOU HAVE BEEN THROWN OUT OF OFFICE AND ARE NOW"
1576 PRINT "RESIDING IN PRISON."
1578 GOTO 1590
1580 PRINT "YOU HAVE BEEN ASSASSINATED."
1590 PRINT
1592 PRINT
1596 STOP
1600 PRINT
1602 PRINT
1610 PRINT DEATHS;"COUNTRYMEN DIED IN ONE YEAR!!!!!"
1615 PRINT "DUE TO THIS EXTREME MISMANAGEMENT, YOU HAVE NOT ONLY"
1620 PRINT "BEEN IMPEACHED AND THROWN OUT OF OFFICE, BUT YOU"
1622 M6=INT(RND(1)*10)
1625 IF M6<=3 THEN 1670
1630 IF M6<=6 THEN 1680
1635 IF M6<=10 THEN 1690
1670 PRINT "ALSO HAD YOUR LEFT EYE GOUGED OUT!"
1672 GOTO 1590
1680 PRINT "HAVE ALSO GAINED A VERY BAD REPUTATION."
1682 GOTO 1590
1690 PRINT "HAVE ALSO BEEN DECLARED NATIONAL FINK."
1692 GOTO 1590

1700 PRINT
1702 PRINT
1710 PRINT "OVER ONE THIRD OF THE POPULTATION HAS DIED SINCE YOU"
1715 PRINT "WERE ELECTED TO OFFICE. THE PEOPLE (REMAINING)"
1720 PRINT "HATE YOUR GUTS."
1730 GOTO 1570
1800 IF DEATHS-POLLUTION_DEATHS<2 THEN 1515
1807 PRINT
1815 PRINT "MONEY WAS LEFT OVER IN THE TREASURY WHICH YOU DID"
1820 PRINT "NOT SPEND. AS A RESULT, SOME OF YOUR COUNTRYMEN DIED"
1825 PRINT "OF STARVATION. THE PUBLIC IS ENRAGED AND YOU HAVE"
1830 PRINT "BEEN FORCED TO EITHER RESIGN OR COMMIT SUICIDE."
1835 PRINT "THE CHOICE IS YOURS."
1840 PRINT "IF YOU CHOOSE THE LATTER, PLEASE TURN OFF YOUR COMPUTER"
1845 PRINT "BEFORE PROCEEDING."
1850 GOTO 1590
1900 PRINT
1902 PRINT
1920 PRINT "CONGRATULATIONS!!!!!!!!!!!!!!!!!!"
1925 PRINT "YOU HAVE SUCCESFULLY COMPLETED YOUR";YEARS_REQUIRED;"YEAR TERM"
1930 PRINT "OF OFFICE. YOU WERE, OF COURSE, EXTREMELY LUCKY, BUT"
1935 PRINT "NEVERTHELESS, IT'S QUITE AN ACHIEVEMENT. GOODBYE AND GOOD"
1940 PRINT "LUCK - YOU'LL PROBABLY NEED IT IF YOU'RE THE TYPE THAT"
1945 PRINT "PLAYS THIS GAME."
1950 GOTO 1590

1960 PRINT "HOW MANY YEARS HAD YOU BEEN IN OFFICE WHEN INTERRUPTED";
1961 INPUT X5
1962 IF X5<0 THEN 1590
1963 IF X5<8 THEN 1969
1965 PRINT "   COME ON, YOUR TERM IN OFFICE IS ONLY";YEARS_REQUIRED;"YEARS."
1967 GOTO 1960
1969 PRINT "HOW MUCH DID YOU HAVE IN THE TREASURY";
1970 INPUT RALLODS
1971 IF RALLODS<0 THEN 1590
1975 PRINT "HOW MANY COUNTRYMEN";    
1976 INPUT COUNTRYMEN
1977 IF COUNTRYMEN<0 THEN 1590
1980 PRINT "HOW MANY WORKERS";
1981 INPUT FOREIGN_WORKERS
1982 IF FOREIGN_WORKERS<0 THEN 1590
1990 PRINT "HOW MANY SQUARE MILES OF LAND";
1991 INPUT LANDAREA
1992 IF LANDAREA<0 THEN 1590
1993 IF LANDAREA>2000 THEN 1996
1994 IF LANDAREA>1000 THEN 100
1996 PRINT "   COME ON, YOU STARTED WITH 1000 SQ. MILES OF FARM LAND"
1997 PRINT "   AND 10,000 SQ. MILES OF FOREST LAND."
1998 GOTO 1990

2000 X5=X5+1
2020 DEATHS=0
2040 GOTO 100
2046 END