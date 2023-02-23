-- Finding the best quaterback
DELETE FROM passer 
WHERE 
	( player_pos = 'DL' )
	OR
	( player_pos = 'DB' )
	OR
	( player_pos = 'WR' )
;
SELECT * 
FROM passer
WHERE 
	( games_played > 5 )
	AND
	( yards > (SELECT AVG(yards) FROM passer) )
ORDER BY "yards" DESC;

-- Finding the best rusher that is not a quaterback
-- This is because the main role of the quaterbacks is passing
SELECT * 
FROM rusher
WHERE 
	( yards >= (SELECT AVG(yards) FROM rusher) )
	AND
	( player_pos != 'QB' )
ORDER BY "yards" DESC;

-- Finding the best receiver
-- Can be a position other than a receiver "WR", however the 
-- best players in the data will most likely be reveivers
-- as that is their primary position
SELECT * 
FROM receiver
WHERE 
	( tds > 15 )
	AND
	( yards > (SELECT AVG(yards) FROM receiver) )
ORDER BY "yards" DESC;

-- Finding the kicker
-- Just like the receivers, the best players in the data
-- will most likely be primarily kickers "K"
SELECT * 
FROM kicker
WHERE 
	( fg_attempt > 0  )
	AND
	( fg_made / fg_attempt > .5  )
ORDER BY "fg_made" DESC;

-- Finding the best returners
-- Since any position can be kick returners, there is no position 
-- for a returner
SELECT * 
FROM returner
WHERE 
	( kick_tds > 0  )
	AND
	( kick_yards > 100  )
ORDER BY "kick_yards" DESC;

-- To find the best defenders, the table must be broken down INTO
-- lineman, linebackers, AND defensive backs
-- Because of that, the distinct values for "player_pos" must be evaluated
SELECT DISTINCT(player_pos) FROM defender;

-- Finding the best defensive lineman
SELECT *
INTO d_line
FROM defender
WHERE
	( player_pos = 'OL' )
	OR
	( player_pos = 'DL')
	OR
	( player_pos = 'ATH' )
;

SELECT * FROM D_LINE
ORDER BY "sacks" DESC;

-- Finding the best linebackers
SELECT *
INTO lineback
FROM defender
WHERE
	( player_pos = 'MLB' )
	OR
	( player_pos = 'JLB')
	OR
	( player_pos = 'ATH' )
	OR
	( player_pos = 'FB' )
	OR
	( player_pos = 'WR' )
;

SELECT * FROM lineback
ORDER BY "total_tack" DESC;

-- Finding the best defensive backs
SELECT *
INTO d_back
FROM defender
WHERE
	( player_pos = 'S' )
	OR
	( player_pos = 'WR' )
	OR
	( player_pos = 'DB' )
	OR
	( player_pos = 'ATH' )
;

SELECT * FROM d_back
ORDER BY "deflection" DESC;

-- Use (DELETE FROM table_name WHERE condition;) to delete rows 
