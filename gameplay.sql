# ------- gameplay ------
use mono;


update players
set location = 'Owens Park'
where player_id = 2;

update players
set bonus = NULL
where player_name = 'Jane';
select * from gameview;
CREATE OR REPLACE VIEW gameview as
select audit_trail.round_number, players.player_name, players.bank_balance, audit_trail.location_at
from players
left join audit_trail on players.player_id = audit_trail.player_id_at order by round_number asc;

select * from location;
select * from tokens;
select * from bonuses;
select * from players;
select * from properties;
select * from audit_trail;

# ---- G6 ----
set @round_nr = 2;
set @play_count = 2;
set @dice = 3;

call GamePlay();
call update_audit_trail(@round_nr);





