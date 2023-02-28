# NAL_2022_Statistics

## Purpose
Growing up in the Dallas-Fort Worth area, there are a lot of franchises that people can follow. However, since Dallas-Fort Worth is in Texas, I mostly watched 
football along with everyone else. This makes sense as the most followed sports franchise is the Dallas Cowboys. Although I watched the Cowboys play inside the 
stadium as well on TV, hoping they would lose, I preferred sports that were indoor. The main reason was due to the heat throughout the year, even in the fall. 
What happens when football goes indoor? You get something called indoor/arena football.  
<p align="center">
   <img width="460" height="300" src="https://3.bp.blogspot.com/_CWMzwqCVq04/R9RV8UlL2-I/AAAAAAAABQA/ykiObtXnVS4/s400/desperados.JPG">
</p> 
<p align="center">
   https://3.bp.blogspot.com/_CWMzwqCVq04/R9RV8UlL2-I/AAAAAAAABQA/ykiObtXnVS4/s400/desperados.JPG
</p> 

The Dallas Desperados played in the Arena Football League from 2002 to 2008 and were owned by Cowboys owner Jerry Jones. I remember going to one of these games and I have
been following the sport ever since. Although the Arena Football League is no more, for now, that hasn't stopped other leagues from emerging. One of those leagues being
the National Arena League (NAL). They are the closest league to the AFL and starts thier 2023 season in April.
I also like looking at the statistics of all the teams and finding the data was very easy.
The purpose of this project is to use SQL to create queries and answer questions that I have.

## Objective 
* To create a database with all the data collected from the 2022 NAL season
* To join the tables of each major statistical category (passing, rushing, receiving, defensive, returning, kicking)
* To filter out any unwanted data that is deemed unnecessary to the project
* To filter, sort, and order to find out the best player by position in each category

### Questions
* Would the best players all be from the best team in 2022 (Albany)? 
* Which players were the best Iron-Man players (players that play on offense and defense)?
* Can I use the queries to create a "Fantasy team" with the best players that could lead to a championship?

## Data
All the data is under the stats tab on https://www.nationalarenaleague.com/. The stats I used were from the regular season only.

## Tools use
PostgreSQL (PGadmin)

## Observations
When going over the data in the CSVs, I found that there were statistics that are suppose to be in percentages. I found that I did not need that data as I can create a 
column later in my observations if necessary. So, I will drop all of the columns that have percentages in them.
![Kicker stats](https://user-images.githubusercontent.com/109183214/220696438-06412bae-6454-493b-80eb-091b3edc8b37.png)  


The columns that will be dropped are as followed:
* `Field Goal %` in the Kicking columns
* `Completion %`,
* `Interception %`, and
* `Touchdown Pass %` in the Passing columns
* `Punt Returns`,
* `Punt Returns Yards`,
* `Punt Returns Average`,
* `Punt Returns Touchdown`, and
* `Punt Returns Long` in the Returning columns  
The reason for removing the punting columns even though they are not percentages is due to the fact that punting is not allowed in indoor football. The alternatives to 
punting is kicking a Field Goal or running a play to get the necessary yards.  


When dropping the columns, I learned that I am able to drop multiple columns at once. I find this very helpful as this can be useful when dealing with larger datasets.
An example of what the tables look like after the columns were dropped is shown below.
![Returner dropped columns](https://user-images.githubusercontent.com/109183214/220715696-7c4f8c16-50d3-451b-b193-e9ad7cf19747.png)

After dropping the columns that I will not need at the moment, I am ready to start joining my tables and creating queries.
![Rusher joined tables](https://user-images.githubusercontent.com/109183214/220955742-c87f9b5b-fafe-40b1-adcf-0d6a6ae06195.png)


When creating queries, I was seeing that certain positions were in tables that naturally wouldn't make sense. The best example is in the defensive table. When finding the distinct positions in the table, I see there are quarterbacks and kickers. However, when looking at the stats for both positions, they do not have a lot of tables. Because of this, I had to remove those position in the tables.
![Defensive distinct player positions](https://user-images.githubusercontent.com/109183214/220955416-f4809a38-e0ca-480d-8a11-8f01a53d34aa.png)
![Defensive kickers](https://user-images.githubusercontent.com/109183214/220955419-0a8db72d-3348-4a7c-9863-4d8d2c55212d.png)
![Defensive quaterbacks](https://user-images.githubusercontent.com/109183214/220955423-91c16b4c-3075-4cbf-8eb6-2360fa928a67.png)

### Answering the question
#### Would the best players all be from the best team in 2022 (Albany)? 
* Best Passer by yards - Robert Kent (2557) - San Antonio
* Best Passer by touchdowns - Robert Kent (66) - San Antonio
* Best Passer by yards - Sam Castronova (226) - Albany
* Best Passer by touchdowns - Sam Castronova (15) - Albany
* Best Receiver by yards - Darius Prince (1308) - Albany
* Best Receiver by touchdowns - Darius Prince (39) - Albany
* Best Defender by tackles - Markus Smith (66) - Jacksonville
* Best Defender by sacks - Kerry Starks (10) - Columbus
* Best Defender by interceptions - Maurice Leggett (6) - Columbus
* Best Defender by deflections - Darius Prince (39) - Albany
* Best Returner by return yards - Darien Townsend (472) - Columbus
* Best Returner by touchdowns - Darien Townsend (3) - Columbus
* Best Kicker by made field goals - TC Stevens (9) - Carolina
* Best Kicker by longest field goals - Daniel Justino (52) - Orlando
* Best Kicker by deuces - Dwayne Hollis (23) - Albany  

After looking at all of the best players certain stats, a good portion are Albany players. Knowing this, I would suggest that the league is good overall and
that no team is superior than others.

#### Which players were the best Iron-Man players (players that play on offense and defense)?
When I looked into the data, it was not easy to find out the best Iron-Man players. This is because some of the players that I assumed would have offensive and
defensive stats only have one or the other. However, I will continue to work with the data to see if I can determine the best Iron-Man players

#### Can I use the queries to create a "Fantasy team" with the best players that could lead to a championship?
For the fantasy team, I had to create a 21 player team. The reason behind 21 players is explained in the NAL rulebook:  
`Prior to the game, teams provide their 21-man game day roster to the lead official which will list all of their
players and designated specialists (offense, defense and special teams).`  
So I decided to go with the following number of players per posiitions:  
QB x2  
OS x2   
DS x3   
OG/LE x2   
TE/RE x2   
C/NG x2   
FB/LB x2   
WR/LB x2  
WR/DB x2  
K x1  
KR x1

After running my queries and explaining my reasoning in the sql file, I went with the following 21 players:
* Jonathan Bane - QB
* Sam Castronova - QB
* Darius Prince - OS
* Kali Rashaad - OS
* Dwayne Hollis - DS
* Markus Smith - DS
* Maurice Leggett - DS
* Chei Hill - OG/LE
* Anthony Johnson - OG/LE
* Maurice Leggett - TE/RE
* Ken Washington - TE/RE
* Micah Robinson - C/NG
* Calvin Fance - C/NG
* Zack Brown - FB/LB
* Kerry Starks - FB/LB
* Jarmon Fortson - WR/LB
* Miles Kelly - WR/LB
* DJ Myers - WR/DB
* Kendrick Ings - WR/DB
* TC Stevens - K
* Darien Townsend - KR

## Summary
I learn a few SQL operators that I didn't know and will positively impact me in future SQL projects. I would like to thank the National Arena League for having 
stats on the website so I can run this project.
