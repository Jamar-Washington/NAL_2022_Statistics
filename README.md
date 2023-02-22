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

When joining the columns, I learned that I am able to join multiple tables at once using the union operator. This can also be very helpful when dealing with larger datasets.
![Rusher joined tables](https://user-images.githubusercontent.com/109183214/220756767-bdee26ab-ecd8-4032-ae9f-84243f6dbaca.png)


## Summary
