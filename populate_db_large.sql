-- submitted

-- coach

INSERT INTO public.coach (
      firstname
    , lastname
    , age
    , phone_number
    , location_id
    , game_date
    , city
    , address
) VALUES 
(
' Jessica ',' Aguilar ',' 2 ',' 115.300.0597x97212 ',' 9 ',' 2018-07-19 21:42:48 ',' North Tommyshire ',' 9189 Madison Centers Apt. 543
Jameshaven, WV 09753 '
),
(
' Charles ',' Matthews ',' 36 ',' (832)051-8247 ',' 10 ',' 1972-09-11 00:07:48 ',' New Billy ',' 709 Michael Hills
Alvarezmouth, SD 22779 '
),
(
' Richard ',' Lopez ',' 19 ',' 181-764-3512x94257 ',' 22 ',' 2019-01-16 16:48:40 ',' West Brandonburgh ',' 54719 Charles Landing Apt. 637
Loriborough, MT 92568 '
),
(
' Troy ',' Hernandez ',' 11 ',' 001-875-220-9228x152 ',' 27 ',' 1970-02-12 09:53:22 ',' Bruceton ',' 65364 Morse Land Suite 281
Ramirezbury, MT 92468 '
),
(
' Daniel ',' Rich ',' 34 ',' (726)401-7646x726 ',' 6 ',' 2012-10-06 04:54:55 ',' East Mike ',' 9770 Swanson Prairie
West Lauraton, VA 77573 '
),
(
' Gregory ',' Aguilar ',' 58 ',' 493.841.8935x855 ',' 21 ',' 2001-03-03 09:48:18 ',' Lake Bridget ',' 20600 Estrada Ways Suite 681
Bernardberg, NH 46080 '
),
(
' Marissa ',' Elliott ',' 96 ',' (728)991-2832 ',' 8 ',' 2004-06-18 10:13:56 ',' Vazquezbury ',' 989 Griffin Islands
Hinesfurt, NJ 09794 '
),
(
' Marcus ',' Hammond ',' 56 ',' 007.146.5273x059 ',' 26 ',' 1995-04-11 11:37:33 ',' North Andrew ',' 8282 Scott Shoal Suite 975
Nathanbury, HI 01647 '
),
(
' Lauren ',' Robinson ',' 18 ',' 582.545.4272x086 ',' 5 ',' 1986-04-08 01:41:14 ',' East Mindyville ',' USNV Boone
FPO AA 99429 '
),
(
' Karen ',' Fitzgerald ',' 33 ',' 869.217.7188x2431 ',' 23 ',' 1992-10-26 02:58:18 ',' West Alexa ',' 7578 Lisa Lodge Apt. 295
East Saraburgh, NC 79422 '
),
(
' Anthony ',' Petty ',' 46 ',' 001-926-604-9945x9323 ',' 25 ',' 2011-07-08 21:39:02 ',' South Warren ',' 649 John Glen
Mckeeland, WV 46880 '
),
(
' Christine ',' Jones ',' 30 ',' 001-113-676-3485x887 ',' 24 ',' 2014-11-16 14:38:38 ',' Kevinmouth ',' 66282 Davis Mountains Apt. 246
Kennedyhaven, SC 30684 '
),
(
' Paul ',' Proctor ',' 63 ',' 633.882.3596 ',' 3 ',' 2016-03-31 08:52:07 ',' Port Nicolefurt ',' 730 Tyler Highway
Aguilarberg, NH 94866 '
),
(
' Elizabeth ',' Martinez ',' 97 ',' 001-936-630-6616x22915 ',' 7 ',' 1981-08-09 21:29:54 ',' Jerometon ',' 058 Joshua Motorway
Jenkinsport, IN 24433 '
),
(
' Marcus ',' Stevens ',' 71 ',' 648.045.9320 ',' 12 ',' 2014-05-28 10:25:14 ',' Lake Victor ',' 9411 Gross Parkway
South Carolyn, MD 58463 '
),
(
' Jennifer ',' Holmes ',' 73 ',' (816)158-2159x74119 ',' 18 ',' 2000-09-01 04:51:45 ',' Keithborough ',' 782 Williams Mills
Bethanybury, NM 87326 '
),
(
' Gail ',' Townsend ',' 55 ',' 001-401-104-8959x6906 ',' 1 ',' 2001-01-04 19:03:47 ',' North Deborahborough ',' 75210 Eric Plains
Tristanton, PA 88863 '
),
(
' Albert ',' Trevino ',' 86 ',' (626)726-8796 ',' 16 ',' 1990-10-08 07:42:13 ',' Jordanborough ',' USNV Berg
FPO AP 81325 '
),
(
' Edward ',' Gibson ',' 47 ',' 505.080.3943 ',' 17 ',' 2002-05-21 09:16:44 ',' Beltranfurt ',' 86647 Brown Pines Suite 435
New Michaelburgh, MD 37438 '
),
(
' Timothy ',' Romero ',' 56 ',' 001-206-979-2364x5694 ',' 28 ',' 1985-03-14 12:52:58 ',' South Lee ',' 842 Jorge Gardens Apt. 877
Vazqueztown, PA 50175 '
)
;
---year table

\copy year from 'year.csv' DELIMITER ',';



--finance table

INSERT INTO public.finance (
      year
    , total_income
    , total_salary
    , sales
) VALUES

    (
' 2010 ',' 63638 ',' 20045 ',' 58678 '
),
(
' 1984 ',' -3622 ',' 22268 ',' 45522 '
),
(
' 2017 ',' -44884 ',' 8710 ',' 76525 '
),
(
' 1994 ',' -47668 ',' 10779 ',' 68308 '
),
(
' 1968 ',' 80078 ',' 45171 ',' 90317 '
),
(
' 1998 ',' 6067 ',' 12449 ',' 3438 '
),
(
' 1951 ',' -84066 ',' 87775 ',' 67705 '
),
(
' 1973 ',' -41478 ',' 12924 ',' 56549 '
),
(
' 1980 ',' 16324 ',' 15749 ',' 87620 '
),
(
' 1967 ',' 10941 ',' 18703 ',' 71712 '
),
(
' 1991 ',' -18070 ',' 82454 ',' 74159 '
),
(
' 2001 ',' -57134 ',' 92335 ',' 7730 '
),
(
' 1979 ',' 45529 ',' 23441 ',' 67485 '
),
(
' 2016 ',' -78085 ',' 53496 ',' 80618 '
),
(
' 2005 ',' 9796 ',' 88575 ',' 79115 '
),
(
' 1988 ',' 23100 ',' 63490 ',' 80861 '
),
(
' 1964 ',' 815 ',' 71929 ',' 4996 '
),
(
' 1985 ',' 67962 ',' 96201 ',' 11834 '
),
(
' 1950 ',' -49704 ',' 87978 ',' 35283 '
),
(
' 1992 ',' -6587 ',' 48595 ',' 91454 '
)
;
-- games 

\copy games from 'games.csv' DELIMITER ',';



-- history

INSERT INTO public.history (
      location_city
    , team_in_same_city
    , historical_team1
    , historical_team2
    , historical_team3
) VALUES (
' New York ',' Knicks ',' 76ers ',' Pistons ',' Hornets '
),
(
' Chicago ',' Bulls ',' Jazz ',' Warriors ',' Knicks '
),
(
' Memphis ',' Grizzles ',' Celtics ',' Magic ',' 76ers '
),
(
' Indiannapolis ',' Pacers ',' Timberwolves ',' Raptors ',' Trail_Blazers '
),
(
' Cleveland ',' Cavaliers ',' Cavaliers ',' Kings ',' Thunders '
),
(
' Houston ',' Rockets ',' Bucks ',' Cavaliers ',' Bucks '
),
(
' Dallas ',' Mavericks ',' Nets ',' Thunders ',' Nuggets '
),
(
' Boston ',' Celtics ',' Clippers ',' Nuggets ',' Pistons '
),
(
' New Orleans ',' Peclicans ',' Knicks ',' Spurs ',' Raptors '
),
(
' Phoenix ',' Suns ',' Lakers ',' Bulls ',' Warriors '
),
(
' Brooklyn ',' Nets ',' Magic ',' 76ers ',' Nets '
),
(
' Milwaukee ',' Bucks ',' Heat ',' Trail_Blazers ',' Grizzles '
),
(
' Portland ',' Trail_Blazers ',' Peclicans ',' Suns ',' Kings '
),
(
' Los_Angles ',' Clippers ',' Wizards ',' Nets ',' Peclicans '
),
(
' Washington ',' Wizards ',' Hawks ',' Mavericks ',' Clippers '
),
(
' Atlanda ',' Hawks ',' Rockets ',' Pacers ',' Mavericks '
),
(
' Toronto ',' Raptors ',' Pacers ',' Timberwolves ',' Heat '
),
(
' Minneapolis ',' Timberwolves ',' Raptors ',' Hawks ',' Celtics '
),
(
' Detroit ',' Pistons ',' Hornets ',' Heat ',' Bulls '
),
(
' Charlotte ',' Hornets ',' Grizzles ',' Bucks ',' Wizards '
)

;
-- honor

INSERT INTO public.honor (
      year
    , mvp
    , defender
    , scorer
    , improvement
) VALUES 
(
' 2010 ',' Jessica Smith ',' Teresa Aguilar ',' Angela Miranda ',' Andre Mccormick '
),
(
' 1984 ',' Marcus Gilbert ',' Clayton Wilson ',' John Hanna ',' Joshua Owens '
),
(
' 2017 ',' Ann Riley ',' Justin Newman ',' Mr. David Mahoney ',' Joseph Smith '
),
(
' 1994 ',' Abigail Thomas ',' James Brown ',' Carly Grant ',' Timothy Wise '
),
(
' 1968 ',' Brenda Torres ',' Donald Drake ',' Christopher Blevins ',' Roy Williams '
),
(
' 1998 ',' Gregory Peterson ',' Karen Patton ',' Robert Keith ',' Richard Briggs '
),
(
' 1951 ',' Caleb Lopez ',' Bryan Moreno ',' Karina Roth ',' Margaret Reed '
),
(
' 1973 ',' Rhonda Moore ',' Debra Moore ',' Michelle Leon ',' Benjamin Foster '
),
(
' 1980 ',' Dustin Johnson ',' Anita Cantu ',' Emily Landry ',' David Jones '
),
(
' 1967 ',' Dakota Sanders ',' Stacy Mason ',' Heather Trevino ',' Michaela Thompson '
),
(
' 1991 ',' Elizabeth Hess ',' Kathryn Ayala ',' Felicia Anderson ',' Tammy Kirby '
),
(
' 2001 ',' Frederick Smith ',' Margaret Chang ',' Daniel Reynolds ',' Christine Carson '
),
(
' 1979 ',' Shannon Choi ',' Tammy Henderson ',' Sarah Roberson ',' David Jenkins '
),
(
' 2016 ',' Destiny Wilson ',' Daniel Moran ',' Amy Rich ',' Ricardo Martin '
),
(
' 2005 ',' Benjamin Foster ',' Michael Mendoza ',' John Campbell ',' Kyle Harris '
),
(
' 1988 ',' Tara Ellis ',' Mary Solis ',' Mary Garcia ',' Robert Brown '
),
(
' 1964 ',' Taylor Chapman ',' Nicole Forbes ',' Michael Rivera ',' Elizabeth Lee '
),
(
' 1985 ',' Diana Ferguson ',' Gina Cook ',' Derek Malone ',' Kimberly Holloway '
),
(
' 1950 ',' Chad Johnson ',' William Dickson ',' Wanda Black ',' Jose Jones '
),
(
' 1992 ',' Elizabeth Wolfe ',' Colleen Gordon ',' Rita Vega ',' Justin Martin '
)
;
--location

INSERT INTO public.location (
      location_id
    , game_date
    , city
    , address
) VALUES(
' 9 ',' 1999-12-29 11:14:23 ', ' Atlanda ', ' 901 Michael Bridge
Smith '
),
(
' 10 ',' 1982-06-17 17:49:21 ', ' Detroit ', ' 3187 Emily Mission Apt.  '
),
(
' 22 ',' 2015-04-13 21:27:04 ', ' San_Antonio ', ' 27620 Tyler Circles Apt. '
),
(
' 27 ',' 1982-01-25 21:14:37 ', ' Chicago ', ' 709 Michael Hills
Alvare '
),
(
' 6 ',' 1999-12-01 05:27:57 ', ' Brooklyn ', ' 4126 David Mountain Suit '
),
(
' 21 ',' 1980-07-15 17:31:45 ', ' Utah ', ' 71163 Justin Bypass Suit '
),
(
' 8 ',' 1976-11-22 15:25:22 ', ' Memphis ', ' 835 Harris Tunnel Apt. 9 '
),
(
' 26 ',' 1978-11-29 08:29:41 ', ' Los_Angles ', ' 81520 Brown Club
Sextont '
),
(
' 5 ',' 1995-12-10 19:18:17 ', ' Toronto ', ' USCGC Ramirez
FPO AA 404 '
),
(
' 23 ',' 1998-09-20 18:47:57 ', ' Portland ', ' 81446 Annette Mountain S '
),
(
' 25 ',' 1981-04-02 01:38:24 ', ' Indiannapolis ', ' 4672 Timothy Gateway
New '
),
(
' 24 ',' 2015-06-24 22:44:59 ', ' Denver ', ' 710 Laura Centers
Port B '
),
(
' 3 ',' 2016-05-18 12:32:30 ', ' Miami ', ' 493 Brady Circles
Jamesp '
),
(
' 7 ',' 2005-11-18 09:24:22 ', ' Philadelphia ', ' 452 Foster Prairie Apt.  '
),
(
' 12 ',' 1987-10-16 18:03:12 ', ' New York ', ' 81095 Hall Manor Suite 2 '
),
(
' 18 ',' 2004-05-13 22:23:08 ', ' Phoenix ', ' 289 Greene Lock
Port Kat '
),
(
' 1 ',' 2011-08-24 06:30:57 ', ' Dallas ', ' 586 Rowland Burg
Clayton '
),
(
' 16 ',' 2014-04-15 10:42:37 ', ' Houston ', ' 59562 Andrew Springs Sui '
),
(
' 17 ',' 2010-10-27 23:44:20 ', ' Cleveland ', ' 6653 Rachel Passage Apt. '
),
(
' 28 ',' 1988-07-27 22:23:47 ', ' Los_Angles ', ' 2086 Scott Street Suite  '
)

;



--player

\copy player from 'player.csv' DELIMITER ',';

--teams

INSERT INTO public.teams (
      team_number
    , name
    , start
    , location
    , game_id
) VALUES(
' 22 ',' Spurs ',' 1999-12-29 ',' San_Antonio ', ' 3888 '
),
(
' 20 ',' Magic ',' 1977-12-14 ',' Orlando ', ' 2204 '
),
(
' 5 ',' Bucks ',' 1970-07-06 ',' Milwaukee ', ' 5387 '
),
(
' 15 ',' Nuggets ',' 1976-03-02 ',' Denver ', ' 4335 '
),
(
' 12 ',' Nets ',' 2009-08-15 ',' Brooklyn ', ' 5460 '
),
(
' 6 ',' Lakers ',' 1972-05-18 ',' Los_Angles ', ' 2866 '
),
(
' 11 ',' Grizzles ',' 2015-09-13 ',' Memphis ', ' 1169 '
),
(
' 7 ',' Hornets ',' 2017-03-01 ',' Charlotte ', ' 3127 '
),
(
' 2 ',' Jazz ',' 1975-09-18 ',' Utah ', ' 89 '
),
(
' 19 ',' Trail_Blazers ',' 1976-09-12 ',' Portland ', ' 3070 '
),
(
' 29 ',' Bulls ',' 1994-02-18 ',' Chicago ', ' 3953 '
),
(
' 3 ',' Timberwolves ',' 1986-02-11 ',' Minneapolis ', ' 2246 '
),
(
' 17 ',' Rockets ',' 1971-03-10 ',' Houston ', ' 5271 '
),
(
' 23 ',' Cavaliers ',' 1972-02-05 ',' Cleveland ', ' 6639 '
),
(
' 16 ',' Celtics ',' 1971-01-29 ',' Boston ', ' 3771 '
),
(
' 28 ',' Pistons ',' 1993-07-21 ',' Detroit ', ' 5658 '
),
(
' 13 ',' Kings ',' 2014-02-12 ',' Sacramento ', ' 4928 '
),
(
' 21 ',' Suns ',' 2012-05-31 ',' Phoenix ', ' 1865 '
),
(
' 1 ',' Heat ',' 2002-12-14 ',' Miami ', ' 4573 '
),
(
' 26 ',' Mavericks ',' 2011-11-28 ',' Dallas ', ' 14 '
)
;


--playoffs


INSERT INTO public.playoffs (
      year
    , teams_total
    , season_start
    , championship
    , game_matchup
    , games_number
    , game_score
    , final_mvp
) VALUES (
' 2010 ',' 29 ',' 1999-12-29 11:14:23 ',' Lakers ',' Kings : Heat ',' 2 ',' 136 : 127 ',' Brandon Bender '
),
(
' 1984 ',' 22 ',' 2009-08-15 08:16:44 ',' Lakers ',' Spurs : Pistons ',' 3 ',' 106 : 87 ',' Michael Garcia '
),
(
' 2017 ',' 29 ',' 1994-02-18 12:22:44 ',' Lakers ',' Nets : Magic ',' 2 ',' 89 : 145 ',' Andre Mccormick '
),
(
' 1994 ',' 30 ',' 1993-07-21 02:06:33 ',' Lakers ',' Hawks : Bucks ',' 3 ',' 131 : 91 ',' Kari Ford '
),
(
' 1968 ',' 20 ',' 1976-03-18 22:56:32 ',' Lakers ',' Celtics : Raptors ',' 1 ',' 145 : 108 ',' Brian Smith '
),
(
' 1998 ',' 21 ',' 2003-02-15 06:36:07 ',' Lakers ',' Magic : Pacers ',' 4 ',' 136 : 94 ',' Danielle Contreras '
),
(
' 1951 ',' 30 ',' 2001-09-14 23:19:07 ',' Lakers ',' Bucks : Bulls ',' 4 ',' 97 : 149 ',' Michael Robertson '
),
(
' 1973 ',' 25 ',' 1973-02-16 11:22:53 ',' Lakers ',' Nuggets : Clippers ',' 5 ',' 100 : 86 ',' Justin Newman '
),
(
' 1980 ',' 28 ',' 2002-09-26 05:22:23 ',' Lakers ',' Raptors : Hawks ',' 2 ',' 144 : 90 ',' Deborah Rios '
),
(
' 1967 ',' 26 ',' 1983-08-12 19:52:03 ',' Lakers ',' Lakers : Trail_Blazers ',' 5 ',' 133 : 140 ',' Joseph Smith '
),
(
' 1991 ',' 27 ',' 2004-07-29 22:36:19 ',' Lakers ',' Grizzles : Wizards ',' 5 ',' 129 : 149 ',' Gavin Mckinney '
),
(
' 2001 ',' 20 ',' 2014-09-25 15:13:52 ',' Lakers ',' Hornets : Jazz ',' 6 ',' 90 : 104 ',' Anthony Matthews '
),
(
' 1979 ',' 30 ',' 1981-02-28 07:44:14 ',' Lakers ',' Thunders : Grizzles ',' 3 ',' 125 : 126 ',' Daniel Johnson '
),
(
' 2016 ',' 26 ',' 1993-07-24 14:44:58 ',' Lakers ',' Bulls : Nuggets ',' 6 ',' 119 : 94 ',' Tina Thomas '
),
(
' 2005 ',' 24 ',' 1990-10-13 13:50:40 ',' Lakers ',' Rockets : Kings ',' 2 ',' 122 : 126 ',' Jason Bates '
),
(
' 1988 ',' 25 ',' 1972-09-26 07:02:56 ',' Lakers ',' Knicks : Rockets ',' 5 ',' 144 : 102 ',' Christopher Blevins '
),
(
' 1964 ',' 20 ',' 1980-07-08 09:29:58 ',' Lakers ',' Warriors : Warriors ',' 4 ',' 135 : 84 ',' Julie Hart '
),
(
' 1985 ',' 28 ',' 1993-10-16 03:55:49 ',' Lakers ',' Pistons : Nets ',' 1 ',' 108 : 134 ',' Kevin Mcdonald Jr. '
),
(
' 1950 ',' 20 ',' 2002-01-15 19:04:29 ',' Lakers ',' Trail_Blazers : Spurs ',' 4 ',' 106 : 93 ',' Linda Jackson '
),
(
' 1992 ',' 28 ',' 2005-05-02 02:23:53 ',' Lakers ',' Jazz : Cavaliers ',' 2 ',' 102 : 89 ',' Elizabeth Martinez '
);



-- newplayer


INSERT INTO public.newplayer (
      player_id
    , firstname
    , lastname
    , weight
    , height
    , "position"
    , age
    , score
    , rebound
    , assist
    , steal
    , block
    , turnover
) VALUES (
' 983 ',' Lebron ',' James ',' 203 ', ' 120 ',' SF ',' 35 ',' 26.0 ',' 8.8 ',' 8.8 ',' 2.1 ',' 4.24 ',' 3.76 '
),
(
' 987 ',' Anthony ',' Davis ',' 210 ', ' 125 ',' PF ',' 29 ',' 30.0 ',' 12.8 ',' 3.8 ',' 2.1 ',' 4.24 ',' 3.76 '
);



-- newgame

INSERT INTO public.newgames (
      game_id
    , game_date
    , game_score
) VALUES (
' 9999 ',' 2019-10-29 11:14:23 ',' 111 : 121 '
),
(
' 8888 ',' 2019-10-28 11:14:23 ',' 100 : 121 '
);


