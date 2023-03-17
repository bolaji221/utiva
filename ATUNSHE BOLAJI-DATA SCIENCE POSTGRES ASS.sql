ATUNSHE BOLAJI-DATA SCIENCE POSTGRESQL ASSIGNMENT 2

--Q1.  How many countries have played in the world cup ( 5years)


            with
                all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2018
                        )

                    select
                        count(distinct team)
                    from
                        all_world_cup
                        ;


--Q2.  Total games played, wins, loss, goals for / against


             with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        points,
                        game_played,
                        win,
                        loss,
                        goals_for,
                        goals_against
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        points,
                        game_played,
                        win,
                        loss,
                        goals_for,
                        goals_against
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        points,
                        game_played,
                        win,
                        loss,
                        goals_for,
                        goals_against
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        points,
                        game_played,
                        win,
                        loss,
                        goals_for,
                        goals_against
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        points,
                        game_played,
                        win,
                        loss,
                        goals_for,
                        goals_against
                    from 
                        fifa_2018
                    )

                    select
                        sum (game_played) as total_games_played,
                        sum (win) as total_wins,
                        sum (loss) as total_loss,
                        sum (goals_for) as total_goals_for,
                        sum (goals_against) as total_goals_against
                    from
                        all_world_cup
                    ;


--Q3.  The country with the highest and lowest appearance in the last five years


            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team
                    from 
                        fifa_2018
                    )
                    select
                        team,
                        count(team) as appearance
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        appearance desc;


--Q4.  The country with the highest and lowest games played 


            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        game_played
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        game_played
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        game_played
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        game_played
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        game_played
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(game_played) as total_game_played 
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_game_played desc;


--Q5.  The country with the highest and lowest games won


            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        win
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        win
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        win
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        win
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        win
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(win) as total_games_won
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_games_won desc;


--Q6   The country with the highest and lowest games lost
      
      
            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        loss
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        loss
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        loss
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        loss
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        loss
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(loss) as total_games_lost
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_games_lost desc;



--Q7.  The country with the highest and lowest goals for
     
     
            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        goals_for
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        goals_for
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        goals_for
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        goals_for
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        goals_for
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(goals_for) as total_goals_for
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_goals_for desc;



--Q8.  The country with the highest and lowest goals against


            with
            	all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        goals_against
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        goals_against
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        goals_against
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        goals_against
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        goals_against
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(goals_against) as total_goals_against
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_goals_against desc;



--Q9.  The country with the highest and lowest goals difference
  
  
            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        goals_difference
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        goals_difference
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        goals_difference
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        goals_difference
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        goals_difference
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(goals_difference) as total_goals_difference
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_goals_difference desc;

--Q10. The country with the highest and lowest point


            with
	            all_world_cup as(
                    select 
                        'wc 2002'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2002
                    union all
                    select 
                        'wc 2006'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2006
                    union all
                    select 
                        'wc 2010'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2010
                    union all 
                    select 
                        'wc 2014'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2014
                    union all
                    select 
                        'wc 2018'as world_cup_year,
                        team,
                        points
                    from 
                        fifa_2018
                    )
                    select
                        team,
                    sum(points) as total_games_points
                    from 
                        all_world_cup
                    group by 
                        team
                    order by 
                        total_games_points desc;




