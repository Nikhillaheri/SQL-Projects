#1.Import both the .CSV files in Dbeaver under the database name Sky_Sports

create database sky_sports;

show tables;

use sky_sports;

#import the data 

select * from skysport1;

select * from skysport2;

#2.	Write an sql query to show all the UNIQUE team names 

select distinct(team) from skysport1 s ;

#3.	Write an SQL query to show name of team which has rank 1 from group 7 

select team,`rank`  from skysport1 s1 where `rank`=1 and `group` =7 ;

#4.Write an sql query to show count of all teams

select count(distinct (team)) from skysport1 s ;

#5.	Write an SQL query to show matches_played by each team

select team,matches_played from skysport1 s ;

#6.	Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent

select team, wins  * 100/matches_played as wins_percent from skysport1 s ;

#7.	Write an SQL query to show which team has maximum goals_scored and their count

select team,goals_scored  from skysport1 s2 where goals_scored in (select max(goals_scored) from skysport1 s );

# Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team

select team, round(draws  * 100/matches_played,2) as draws_percent from skysport1 s ;

#9.	 Write an SQL query to show which team has minimum goals_scored and their count

select team,goals_scored  from skysport1 s2 where goals_scored in (select min(goals_scored) from skysport1 s );

#10. Write an SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses and name the resulting column as losses_percent

select team, losses  * 100/matches_played as losses_percent from skysport1 s order by losses asc ;

#11. Write an SQL query to show the average goal_difference 

select Avg(goal_difference) from skysport1 s;

#12. Write an SQL query to show name of the team where points are 0 

select team, points from skysport1 s where points=0 ;

#13. Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded

select * from skysport1 s where expected_goal_scored < exp_goal_conceded;

#14. Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5

select team ,exp_goal_difference  from skysport1 s where exp_goal_difference between -0.5 and 0.5;

#15. Write an SQL query to show all data in ascending order by exp_goal_difference_per_90

select * from skysport1 s order by exp_goal_difference_per_90 asc;

#16. Write an SQL query to show team which has maximum number of players_used

select team, players_used from skysport2 s2 where players_used in (select max(players_used) from skysport2 s) ;

#17. Write an SQL query to show each team name and avg_age in ascending order by avg_age

select team , avg_age from skysport2 s order by avg_age asc;

#18. Write an sql query to show average possession of teams

select avg(possession) from skysport2 s ;

#19. Write a SQL query to show team which has played atleast 5 games

select team  from skysport1 s where matches_played>=5;

#20. Write an SQL query to show all data for which minutes is greater than 600

select * from skysport2 s where minutes >=600;

#21. Write an SQL query to show team, goals, assists in ascending order by goals

select team,goals_scored ,goals_against  from skysport1 s order by goals_scored  asc;

#22. Write an SQL query to show team, pens_made, pens_att in descending order by pens_made

select team,pens_made ,pens_att from skysport2 s order by pens_made desc;

#23. Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 

select team,cards_yellow,cards_red from skysport2 s where cards_red = 1 order by cards_yellow asc;

#24. Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 

select team,goals_per90,assists_per90,goals_assists_per90 from skysport2 s order by goals_assists_per90 desc;

#25. Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 

select team, goals_pens_per90 , goals_assists_pens_per90 from skysport2 s order by goals_assists_pens_per90 asc;

#26. Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 

select team,shots, shots_on_target_pct from skysport2 s where shots_on_target_pct < 30 order by shots_on_target_pct asc;

#27. Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium

select team,shots_per90,shots_on_target_per90 from skysport2 s where team = "belgium" ;

#28. Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 

select team,goals_per_shot,goals_per_shot_on_target _on_target,average_shot_distance from skysport2 s order by average_shot_distance desc;

#29. Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 

select team,errors, touches from skysport2 s where errors = 0 and touches <1500;

#30. Write an SQL query to show team, fouls which has maximum number of fouls

select team , fouls as max_fouls from skysport2 s where fouls in (select max(fouls) from skysport2 s3) ;

#31. Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20

select team , offsides from skysport2 s where offsides <10 or offsides >20;

#32. Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct

select team , aerials_won , aerials_won_pct from skysport2 s order by aerials_won_pct desc;

#33. Write an SQL query to show number of teams each group has!

select `group`,count(team) from skysport1 s group by `group` ;

#34. Write a SQL query to show team names group 6 has

select team, `group`  from skysport1 s where `group` =6 ;

#35. Write an SQL query to show Australia belongs to which group 

select team ,`group` from skysport1 s where team="australia";

#36. Write an SQL query to show group, average wins by each group 

select `group`, avg(wins)from skysport1 s group by `group`;

#37. Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored

select `group`, max(expected_goal_scored) from skysport1 s group by `group` order by max(expected_goal_scored) asc;

#38. Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded

select `group`, min(exp_goal_conceded) from skysport1 s group by `group` order by min(exp_goal_conceded) desc;

#39.Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 

select `group`, avg(exp_goal_difference_per_90) from skysport1 s group by `group` order by avg(exp_goal_difference_per_90) asc;

#40. Write an SQL query to show which team has equal number of goals_scored and goals_against 

select team,goals_scored,goals_against from skysport1 s where goals_scored = goals_against ;

#41. Write an SQL query to show which team has maximum players_used 

select team,players_used from skysport2 s where players_used in(select max(players_used) from skysport2 s3 );

#42. Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 

select team,players_used,avg_age,games,minutes from skysport2 s where minutes < 500 and minutes > 200;

#43. Write an SQL query to show all data of group_stats in ascending order BY points

select s1.team,s2.games_starts,s1.points from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team order by points asc;

#44. Write an SQL query to show ALL UNIQUE team in ascending order by team

select distinct (team) from skysport1 s order by  team asc;

#45. Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 

select avg(s2.avg_age),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by avg(s2.avg_age) desc ; 

#46. Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.

select sum(s2.fouls),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by sum(s2.fouls) asc ; 

#47. Write an SQL query to show total number of games for each group and arrange it in descending order by games. 

select sum(s2.games),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by sum(s2.games) desc ;

#48. Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 

select sum(s2.players_used),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by sum(s2.players_used) asc ;

#49. Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.

select sum(s2.offsides),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by sum(s2.offsides) asc ;

#50. Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.

select Avg(s2.passes_pct),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by Avg(s2.passes_pct) desc ;

#51. Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.

select Avg(s2.goals_per90),s1.`group`from skysport1 s1 inner join skysport2 s2 on s1.team=s2.team group by s1.`group` order by Avg(s2.goals_per90) asc ;




