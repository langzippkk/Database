-- submitted
-- Type: TABLE ; Name: player; Owner: nian
--

CREATE TABLE player (
    player_id integer NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    weight integer NOT NULL,
    height integer NOT NULL,
    "position" character(10),
    age integer NOT NULL,
    score real,
    rebound real,
    assist real,
    steal real,
    block real,
    turnover real
);


ALTER TABLE player ADD CONSTRAINT player_id
  PRIMARY KEY (player_id);

--
-- Type: TABLE ; Name: teams; Owner: nian
--

CREATE TABLE games (
    game_id integer NOT NULL,
    game_date integer,
    game_score text NOT NULL,
    player1 integer ,
    player2 integer,
    player3 integer,
    player4 integer
);


ALTER TABLE games ADD CONSTRAINT game_id
  PRIMARY KEY (game_id);





CREATE TABLE teams (
    team_number integer NOT NULL,
    name character varying NOT NULL,
    start timestamp without time zone,
    location character varying NOT NULL,
    game_id integer NOT NULL
);


ALTER TABLE teams ADD CONSTRAINT team_number
  PRIMARY KEY (team_number);
ALTER TABLE teams ADD CONSTRAINT game_team
  FOREIGN KEY (game_id) REFERENCES games(game_id) ON DELETE CASCADE;



--
-- Type: TABLE ; Name: coach; Owner: nian
--


CREATE TABLE coach (
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    age integer NOT NULL,
    phone_number text NOT NULL,
    location_id integer NOT NULL,
    game_date timestamp without time zone,
    city character varying,
    address text
);


ALTER TABLE coach ADD CONSTRAINT coach1
  PRIMARY KEY (firstname, lastname);


--
-- Type: TABLE ; Name: year; Owner: nian
--

CREATE TABLE year (
    year integer NOT NULL,
    teams_total integer NOT NULL,
    season_start timestamp with time zone,
    championship text NOT NULL
);


ALTER TABLE year ADD CONSTRAINT year1
  PRIMARY KEY (year);



--
-- Type: TABLE ; Name: honor; Owner: nian
--

CREATE TABLE honor (
    year integer NOT NULL,
    mvp character(20),
    defender character(20),
    scorer character(20),
    improvement character(20)
);


ALTER TABLE honor ADD CONSTRAINT year2
  PRIMARY KEY (year);
ALTER TABLE honor ADD CONSTRAINT honor_of_year
  FOREIGN KEY (year) REFERENCES year(year) ON DELETE CASCADE;



--
-- Type: TABLE ; Name: location; Owner: nian
--

CREATE TABLE location (
    location_id integer NOT NULL,
    game_date timestamp with time zone NOT NULL,
    city character varying,
    address text
);


ALTER TABLE location ADD CONSTRAINT location_id
  PRIMARY KEY (location_id);


--
-- Type: TABLE ; Name: finance; Owner: nian
--

CREATE TABLE finance (
    year integer NOT NULL,
    total_income integer,
    total_salary integer,
    sales integer
);


ALTER TABLE finance ADD CONSTRAINT finance1
  PRIMARY KEY (year);
ALTER TABLE finance ADD CONSTRAINT finance_of_year
  FOREIGN KEY (year) REFERENCES year(year) ON DELETE CASCADE;


--
-- Type: TABLE ; Name: history; Owner: nian
--

CREATE TABLE history (
    location_city character varying NOT NULL,
    team_in_same_city character varying NOT NULL,
    historical_team1 character varying,
    historical_team2 character varying,
    historical_team3 character varying
);


ALTER TABLE history ADD CONSTRAINT historical_team
  PRIMARY KEY (location_city);


--
-- Type: TABLE ; Name: playoffs; Owner: nian
--


CREATE TABLE playoffs (
    year integer NOT NULL,
    teams_total integer NOT NULL,
    season_start timestamp with time zone,
    championship text NOT NULL,
    game_matchup text NOT NULL,
    games_number integer NOT NULL,
    game_score text NOT NULL,
    final_mvp character varying
);



ALTER TABLE playoffs ADD CONSTRAINT playoff
  PRIMARY KEY (game_matchup, games_number);
ALTER TABLE playoffs ADD CONSTRAINT playoff_of_year
  FOREIGN KEY (year) REFERENCES year(year) ON DELETE CASCADE;


--
-- Type: TABLE ;create new table for hw4
--

CREATE TABLE newplayer (
    player_id integer NOT NULL,
    firstname character varying NOT NULL,
    lastname character varying NOT NULL,
    weight integer NOT NULL,
    height integer NOT NULL,
    "position" character(10),
    age integer NOT NULL,
    score real,
    rebound real,
    assist real,
    steal real,
    block real,
    turnover real
);



CREATE TABLE newgames (
    game_id integer NOT NULL,
    game_date timestamp with time zone NOT NULL,
    game_score text NOT NULL
);
