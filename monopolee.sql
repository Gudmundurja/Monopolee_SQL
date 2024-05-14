show tables;
USE Mono;
select * from players;
select * from audit_trail;
select * from bonuses;
select * from location;
select * from properties;
select * from tokens;

#--------- START GAME -------

SET @Dice := 3;
Select @dice;
set @play_count = 2;
set @current_location = (select location from players where player_id = @play_count);
select COUNT(*) from players as n_players;
select FLOOR( RAND() * (6-1) + 1) as random_dice;
#select player_id, location, bank_balance from players
#order by player_id;
#elect player_id, location, location_id from players inner join location on players.location = location.location_name where player_id = @play_count;

select @current_prop;
set @current_prop = 'Kilburn';
# ------- R1 ----------
update properties, players
set properties.owner_id = if(properties.property_name = players.location and properties.owner_id = NULL, properties.owner_id, players.player_id),
players.bank_balance = if(properties.property_name = players.location and properties.owner_id = NULL, players.bank_balance, players.bank_balance - purchase_cost)
where players.player_id = @play_count and properties.property_name = @current_prop;

call Rule1;

select * from properties;
select * from players;
show tables;
# ------ Set new player location -------
update players
set location = 'AMBS'
where player_id = 1;

update players
set bank_balance = 240
where player_id = 1;


update properties
set owner_id = 1
where property_name = 'Uni Place';

set @colour_owner = (select count(*) from (select colour from properties where owner_id = (select owner_id from properties where property_name = @current_prop)) as c);

select @colour_owner;
set @current_prop_colour = (select colour from properties where property_name = @current_prop);
select @current_prop_colour;
set @current_prop_owner = (select owner_id from properties where property_name = @current_prop);
select @current_prop_owner;

set @colour_owner_id_check =  (select case
								when @colour_owner < 2 then NULL
                                when @colour_owner = 2 then @current_prop_owner
                                else NULL end);
select @colour_owner_id_check;
            
select @colour_owner_id_check;

select * from players;
select * from properties;
# ------- R2 -----
update players
left join properties on players.location = properties.property_name
set bank_balance = case when owner_id is not NULL and @colour_owner != 2 then players.bank_balance - properties.purchase_cost
								when properties.owner_id is not NULL and @colour_owner = 2 then players.bank_balance - 2*properties.purchase_cost
                                else bank_balance
                                end where player_id = @play_count and location = @current_prop;

update players
inner join properties on players.location = properties.property_name
set bank_balance = case when players.player_id = @current_prop_owner and players.player_id != @colour_owner_id_check then players.bank_balance + (select purchase_cost from properties where property_name = @current_prop)
						when players.player_id = @current_prop_owner and players.player_id = @colour_owner_id_check then players.bank_balance + 2*(select purchase_cost from properties where property_name = @current_prop)
                        else bank_balance
                        end where player_id = @current_prop_owner;

select @current_prop;
#select player_id from (select players.player_id, properties.owner_id, properties.colour from players
#left join properties on players.player_id = properties.owner_id where players.player_id = @play_count) as c where count(*) =2;
call Rule2;
# ------ R3 --------
update players
set location = 'Free Parking'
where player_id = 1;

select * from bonuses;
select * from location;
select * from players;
update players
inner join bonuses on players.location = bonuses.bonus_name
set location = case 
				when location = 'Jail' then bonus = 2
                end;
set @Dice = 6;
select * from players;
select * from location;
update players
set bonus = 6
where player_id = 1;
update players
inner join bonuses on players.bonus = bonuses.bonus_id
set location = case
				when bonus = 6 and @Dice != 6 then 'Jail'
                when bonus = 6 and @Dice = 6 then (select location_name from location where location_id = 4 + @Dice)
                end where player_id = @play_count;
set @play_count = 1;
select * from players;
select * from location;
select * from bonuses;

update players
set location = 'GO'
where player_id = 1;
select * from players;
# ----- R4 -----
update players
inner join location on location_name = location
set bank_balance = case when location = 'GO' then bank_balance + 200
						when @current_location >= 6 and @location_after_dice < 6 then bank_balance + 200
						else bank_balance
						end;

# ----- R5 ------
select @play_count;
select * from players;
select * from location
order by location_id asc;
select @random_dice;
set @random_dice = 6;
select @dice;
set @current_location_id = 14;
set @board_fit_6 = (@current_location_id + 6 + @random_dice -14);
select @board_fit_6;
set @board_fit_non_6 = @current_location_id + @dice -14;
select @board_fit;
update players
set location = case
				when @dice = 6 and (@current_location_id + 6 + @dice) < 14 then (select location_name from location where location_id = (@current_location_id + 6 + @random_dice))
                when @dice = 6 and (@current_location_id + 6 + @dice) > 14 then (select location_name from location where location_id = @board_fit_6)
                when @dice != 6 and (@current_location_id + @dice) < 14 then (select location_name from location where location_id = (@current_location_id + @dice))
                when @dice != 6 and (@current_location_id + @dice) > 14 then (select location_name from location where location_id = @board_fit_non_6)
                end where player_id = @play_count;





# ----- R7 -----

update players
    set location = case
				when bonus = 2 then ((select location_name from location where location_id = 13) )
                else location
                end where player_id = @play_count;
                

select * from location;
set @current_prop = case when (select location_type from location where location_name = @current_location) = 1 then (select location from players where player_id = @play_count)
else '' end;
set @current_location = 'Kilburn';
select @current_prop;

                
                
                