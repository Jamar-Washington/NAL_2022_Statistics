-- Remove Field Goal % FROM Kicking table
Alter Table al_kicker Drop Column fg_per;
Alter Table ca_kicker Drop Column fg_per;
Alter Table co_kicker Drop Column fg_per;
Alter Table jx_kicker Drop Column fg_per;
Alter Table or_kicker Drop Column fg_per;
Alter Table sa_kicker Drop Column fg_per;

-- Remove Completion, Interception, AND Touchdown Pass % FROM Kicking table
Alter Table al_passer Drop Column complete_per, Drop Column intercept_per, Drop Column tds_per;
Alter Table ca_passer Drop Column complete_per, Drop Column intercept_per, Drop Column tds_per;
Alter Table co_passer Drop Column complete_per, Drop Column intercept_per, Drop Column tds_per;
Alter Table jx_passer Drop Column complete_per, Drop Column intercept_per, Drop Column tds_per;
Alter Table or_passer Drop Column complete_per, Drop Column intercept_per, Drop Column tds_per;
Alter Table sa_passer Drop Column complete_per, Drop Column intercept_per, Drop Column tds_per;

-- Remove Punting data FROM Returning table
Alter Table al_returner 
Drop Column punt_return,
Drop Column punt_yards,
Drop Column avgpunt_yards,
Drop Column punt_tds,
Drop Column punt_long;

Alter Table ca_returner 
Drop Column punt_return,
Drop Column punt_yards,
Drop Column avgpunt_yards,
Drop Column punt_tds,
Drop Column punt_long;

Alter Table co_returner 
Drop Column punt_return,
Drop Column punt_yards,
Drop Column avgpunt_yards,
Drop Column punt_tds,
Drop Column punt_long;

Alter Table jx_returner 
Drop Column punt_return,
Drop Column punt_yards,
Drop Column avgpunt_yards,
Drop Column punt_tds,
Drop Column punt_long;

Alter Table or_returner 
Drop Column punt_return,
Drop Column punt_yards,
Drop Column avgpunt_yards,
Drop Column punt_tds,
Drop Column punt_long;

Alter Table sa_returner 
Drop Column punt_return,
Drop Column punt_yards,
Drop Column avgpunt_yards,
Drop Column punt_tds,
Drop Column punt_long;
