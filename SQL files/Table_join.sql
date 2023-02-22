-- Join all the defender tables to together
INSERT INTO defender
SELECT * FROM al_defender
UNION
Select * FROM ca_defender
UNION
select * FROM co_defender
UNION
select * FROM jx_defender
UNION
select * FROM or_defender
UNION
select * FROM sa_defender;

-- Verify
SELECT * FROM defender;

-- Join all the kicker tables to together
INSERT INTO kicker
SELECT * FROM al_kicker
UNION
Select * FROM ca_kicker
UNION
select * FROM co_kicker
UNION
select * FROM jx_kicker
UNION
select * FROM or_kicker
UNION
select * FROM sa_kicker;

-- Verify
SELECT * FROM kicker;

-- Join all the passer tables to together
INSERT INTO passer
SELECT * FROM al_passer
UNION
Select * FROM ca_passer
UNION
select * FROM co_passer
UNION
select * FROM jx_passer
UNION
select * FROM or_passer
UNION
select * FROM sa_passer;

-- Verify
SELECT * FROM passer;

-- Join all the receiver tables to together
INSERT INTO receiver
SELECT * FROM al_receiver
UNION
Select * FROM ca_receiver
UNION
select * FROM co_receiver
UNION
select * FROM jx_receiver
UNION
select * FROM or_receiver
UNION
select * FROM sa_receiver;

-- Verify
SELECT * FROM receiver;

-- Join all the returner tables to together
INSERT INTO returner
SELECT * FROM al_returner
UNION
Select * FROM ca_returner
UNION
select * FROM co_returner
UNION
select * FROM jx_returner
UNION
select * FROM or_returner
UNION
select * FROM sa_returner;

-- Verify
SELECT * FROM returner;

-- Join all the rusher tables to together
INSERT INTO rusher
SELECT * FROM al_rusher
UNION
Select * FROM ca_rusher
UNION
select * FROM co_rusher
UNION
select * FROM jx_rusher
UNION
select * FROM or_rusher
UNION
select * FROM sa_rusher;

-- Verify
SELECT * FROM rusher;
