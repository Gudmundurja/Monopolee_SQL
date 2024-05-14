
# ----- Global variables ------
select @current_prop;
set @current_prop = case when (select location_type from location where location_name = @current_location) = 1 then (select location from players where player_id = @play_count)
else '' end;
# Dice
SET @Dice = 3;
Select @dice;
# Play count
set @play_count = 1;
set @current_location = (select location from players where player_id = @play_count);
# number of players
set @n_players = (select COUNT(*) from players);
select @n_players;
# round number
set @round_nr = 1;
set @round_nr = floor((@play_count/@n_players));
# random dice
set @random_dice = (select FLOOR( RAND() * (6-1) + 1));
select @random_dice;
# owner of colour check
set @colour_count_check = (select count(*) from (select colour from properties where owner_id = (select owner_id from properties where property_name = @current_prop)) as c);
select @colour_owner;
# colour check
set @current_prop_colour = (select colour from properties where property_name = @current_prop);
select @current_prop_colour;
# property owner check
set @current_prop_owner = (select owner_id from properties where property_name = @current_prop);
select @current_prop_owner;
# Current location_id of current player
set @current_location_id = (select location_id from location where location_name = (select location from players where player_id = @play_count));
select @current_location_id;
# location of current player after dice throw
set @location_after_dice = @current_location + @dice;
select @location_after_dice;
select * from location;
