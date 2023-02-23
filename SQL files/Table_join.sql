-- Join all the defender tables to together
INSERT INTO defender
SELECT * FROM al_defender
UNION
SELECT * FROM ca_defender
UNION
SELECT * FROM co_defender
UNION
SELECT * FROM jx_defender
UNION
SELECT * FROM or_defender
UNION
SELECT * FROM sa_defender;

-- Verify
SELECT * FROM defender;

-- Join all the kicker tables to together
INSERT INTO kicker
SELECT * FROM al_kicker
UNION
SELECT * FROM ca_kicker
UNION
SELECT * FROM co_kicker
UNION
SELECT * FROM jx_kicker
UNION
SELECT * FROM or_kicker
UNION
SELECT * FROM sa_kicker;

-- Verify
SELECT * FROM kicker;

-- Join all the passer tables to together
INSERT INTO passer
SELECT * FROM al_passer
UNION
SELECT * FROM ca_passer
UNION
SELECT * FROM co_passer
UNION
SELECT * FROM jx_passer
UNION
SELECT * FROM or_passer
UNION
SELECT * FROM sa_passer;

-- Verify
SELECT * FROM passer;

-- Join all the receiver tables to together
INSERT INTO receiver
SELECT * FROM al_receiver
UNION
SELECT * FROM ca_receiver
UNION
SELECT * FROM co_receiver
UNION
SELECT * FROM jx_receiver
UNION
SELECT * FROM or_receiver
UNION
SELECT * FROM sa_receiver;

-- Verify
SELECT * FROM receiver;

-- Join all the returner tables to together
INSERT INTO returner
SELECT * FROM al_returner
UNION
SELECT * FROM ca_returner
UNION
SELECT * FROM co_returner
UNION
SELECT * FROM jx_returner
UNION
SELECT * FROM or_returner
UNION
SELECT * FROM sa_returner;

-- Verify
SELECT * FROM returner;

-- Join all the rusher tables to together
INSERT INTO rusher
SELECT * FROM al_rusher
UNION
SELECT * FROM ca_rusher
UNION
SELECT * FROM co_rusher
UNION
SELECT * FROM jx_rusher
UNION
SELECT * FROM or_rusher
UNION
SELECT * FROM sa_rusher;

-- Verify
SELECT * FROM rusher;
