with yesterday as (
	select * from players
	where current_season = 1996
)
, today as (
select * from player_seasons
where season = 1996
)
select 
coalesce(t.player_name, y.player_name) as player_name,
coalesce(t.height, y.height) as height,
coalesce(t.college, y.college) as college,
coalesce(t.country, y.country) as country,
coalesce(t.draft_year, y.draft_year) as draft_year,
coalesce(t.draft_round, y.draft_round) as draft_round,
coalesce(t.draft_number, y.draft_number) as draft_number

from today t
full outer join yesterday y
on t.player_name = y.player_name;

