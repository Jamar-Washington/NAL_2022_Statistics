-- Finding the best quaterback
-- This is because the main role of the quaterbacks is passing
SELECT * 
FROM passer
WHERE 
    ( player_pos = 'QB' )
    AND
	( games_played > 5 )
	AND
	( yards > (SELECT AVG(yards) FROM passer) )
ORDER BY "rating" DESC;

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

-- FANTASY TEAM QUERY
-- Query for QB
-- Same query for finding the best QB
SELECT * 
FROM passer
WHERE 
    ( player_pos = 'QB' )
    AND
	( games_played > 5 )
	AND
	( yards > (SELECT AVG(yards) FROM passer) )
ORDER BY "rating" DESC;

-- Query for OS
-- Same query for finding the best receivers
-- OS (offensive specialist), just like QBs, are exempt from Iron-Man rules
SELECT * 
FROM receiver
WHERE 
	( tds > 15 )
	AND
	( yards > (SELECT AVG(yards) FROM receiver) )
ORDER BY "yards" DESC;

-- Query for DS
-- Looked at the defenders in the defensive back table with the most deflections
-- If the deflections do not stand out, the look at the deflections and interceptions
-- DS (defensive specialist) are exempt from Iron-Man rules 
SELECT * FROM d_back
ORDER BY "deflection" DESC;

-- Query for OG/LE
-- Since there isn't stats for offensive lineman (pancakes, sacks allowed, holding penalties, etc.), I chose to go with
-- defensive lineman with the most sacks
SELECT * 
FROM d_line
ORDER BY "sacks" DESC;

-- Query for TE/RE
-- Since the Tight End is mostly blocking, I focused more on the player with the most tackles (so they can be a better
-- defensive lineman than an tight end)
SELECT * 
FROM d_line
INNER JOIN receiver
ON d_line.player_name = receiver.player_name
ORDER BY "total_tack" DESC;

-- Query for C/NG
-- Same logic behind selecting my OG/LE with the exception that I want players that can tackle in the event that the team is
-- prevent a goal line run
SELECT * 
FROM d_line
WHERE 
	( player_name != 'Chei Hill' ) and
	( player_name != 'Anthony Johnson' ) and
	( player_name != 'Maurice Leggett' ) and
	( player_name != 'Ken Washington' )
ORDER BY "total_tack" DESC;

-- Query for FB/LB
-- Since the Fullback is mostly blocking, I focused more on the player with the most tackles
-- But unlike the Tight End, there should be a balance between 
SELECT * 
FROM lineback
INNER JOIN rusher
ON lineback.player_name = rusher.player_name
ORDER BY "total_tack" DESC, "yards" DESC;

-- Query for WR/LB
-- Receiving is more of a factor for this position since this player mostly isn't the linebacker who blitzes.
-- However, more tackles does help the player
SELECT * 
FROM lineback
INNER JOIN receiver
ON lineback.player_name = receiver.player_name
ORDER BY "yards" DESC;

-- Query for WR/DB
-- Since the best defensive backs players were select 
SELECT * 
FROM d_back
INNER JOIN receiver
ON d_back.player_name = receiver.player_name
ORDER BY "yards" DESC;

-- Query for K
-- Looking for kicker with not only the most made field goals, but the most deuces as well
-- Deuces are an opportunity for kickers on kickoffs to kick the football through the uprights. 
-- If successful, the kicking team is awarded two points.
SELECT * 
FROM kicker
WHERE 
	( fg_attempt > 0  )
	AND
	( fg_made / fg_attempt > .5  )
ORDER BY "fg_made" DESC;

-- Query for KR
-- Looking for best returner by returning yards ("kick_yards")
SELECT * 
FROM returner
WHERE 
	( kick_tds > 0  )
	AND
	( kick_yards > 100  )
ORDER BY "kick_yards" DESC;