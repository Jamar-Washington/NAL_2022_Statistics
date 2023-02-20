-- Creating tables for NAL stats
-- Creating table for passing stats
CREATE TABLE Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);



-- Now create tables for all the ind. teams
-- Albany
-- Creating table for passing stats
CREATE TABLE AL_Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE AL_Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE AL_Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE AL_Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE AL_Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	punt_return int not null,
	punt_yards	int not null,
	avgpunt_yards int not null,
	punt_TDs int not null,
	punt_long int not null,
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE AL_Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Carolina
-- Creating table for passing stats
CREATE TABLE CA_Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE CA_Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE CA_Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE CA_Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE CA_Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	punt_return int not null,
	punt_yards	int not null,
	avgpunt_yards int not null,
	punt_TDs int not null,
	punt_long int not null,
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE CA_Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Columbus
-- Creating table for passing stats
CREATE TABLE CO_Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE CO_Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE CO_Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE CO_Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE CO_Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	punt_return int not null,
	punt_yards	int not null,
	avgpunt_yards int not null,
	punt_TDs int not null,
	punt_long int not null,
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE CO_Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Jacksonville
-- Creating table for passing stats
CREATE TABLE JX_Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE JX_Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE JX_Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE JX_Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE JX_Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	punt_return int not null,
	punt_yards	int not null,
	avgpunt_yards int not null,
	punt_TDs int not null,
	punt_long int not null,
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE JX_Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Orlando
-- Creating table for passing stats
CREATE TABLE OR_Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE OR_Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE OR_Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE OR_Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE OR_Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	punt_return int not null,
	punt_yards	int not null,
	avgpunt_yards int not null,
	punt_TDs int not null,
	punt_long int not null,
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE OR_Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- San Antonio
-- Creating table for passing stats
CREATE TABLE SA_Passer (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	complete int not null,	
	complete_per int not null,	
	incomplete int not null,
	intercept int not null,
	intercept_per int not null,
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	TDs_per int not null,
	rating int not null,
	long int not null,
	sacks int not null,
	yards_lost int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for rushing stats
CREATE TABLE SA_Rusher (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	attempts int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for receiving stats
CREATE TABLE SA_Reciever (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	receptions int not null,
	yards int not null,
	avg_yards int not null,
	yards_game int not null,
	TDs int not null,
	long int not null,
	fumbles int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for defensive stats
CREATE TABLE SA_Defender (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	tackles int not null,
	assist_tack int not null,
	sacks int not null,
	fumb_rec int not null,
	fumb_force int not null,
	block_kick int not null,
	intercept int not null,
	deflection int not null,
	TDs int not null,
	
	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for returning stats
CREATE TABLE SA_Returner (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	punt_return int not null,
	punt_yards	int not null,
	avgpunt_yards int not null,
	punt_TDs int not null,
	punt_long int not null,
	kick_return int not null,
	kick_yards	int not null,
	avgkick_yards int not null,
	kick_TDs int not null,
	kick_long int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);

-- Creating table for kicking stats
CREATE TABLE SA_Kicker (
	player_num int not null,
	player_name varchar(40) not null,
	player_pos varchar(3) not null,
	games_played int not null,	
	fg_attempt int not null,
	fg_made int not null,
	fg_per int not null,
	fg_long int not null,
	duece int not null,

	PRIMARY KEY (player_name),
	UNIQUE (player_num)
);
