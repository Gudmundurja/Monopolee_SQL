
INSERT INTO tokens (token_name) VALUES ('Dog');
INSERT INTO tokens (token_name) VALUES ('Car');
INSERT INTO tokens (token_name) VALUES ('Battleship');
INSERT INTO tokens (token_name) VALUES ('Top hat');
INSERT INTO tokens (token_name) VALUES ('Thimble');
INSERT INTO tokens (token_name) VALUES ('Boot');

INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (1, 'Chance 1', 'Pay each o the other players £50');
INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (2, 'Chance 2', 'Move forward 3 paces');
INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (3, 'Community Chest 1', 'For winning a Beauty Contest, you win £50');
INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (4, 'Community Chest 2', 'Your library books are overdue. Play a fine of £30');
INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (5, 'Free Parking', 'No action');
INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (6, 'Go to Jail', 'Go to Jail, do not pass GO, do not collect £200');
INSERT INTO bonuses (bonus_id, bonus_name, description) VALUES (7, 'GO', 'Collect £200');

INSERT INTO location (location_id, location_name, location_type) VALUES (0, 'GO', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (1, 'Kilburn', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (2, 'Chance 1', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (3, 'Uni Place', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (4, 'Jail', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (5, 'Victoria', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (6, 'Community chest 1', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (7, 'Piccadilly', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (8, 'Free Parking', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (9, 'Oak House', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (10, 'Chance 2', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (11, 'Owens Park', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (12, 'Go to Jail', 0);
INSERT INTO location (location_id, location_name, location_type) VALUES (13, 'AMBS', 1);
INSERT INTO location (location_id, location_name, location_type) VALUES (14, 'Community Chest 2', 0);

INSERT INTO players (player_id, player_name, token, bank_balance, location, bonus) VALUES (1, 'Mary', 'Battleship', 190, 'Free Parking', NULL);
INSERT INTO players (player_id, player_name, token, bank_balance, location, bonus) VALUES (2, 'Bill', 'Dog', 500, 'Owens Park', NULL);
INSERT INTO players (player_id, player_name, token, bank_balance, location, bonus) VALUES (3, 'Jane', 'Car', 150, 'AMBS', NULL);
INSERT INTO players (player_id, player_name, token, bank_balance, location, bonus) VALUES (4, 'Norman', 'Thimble', 250, 'Kilburn', NULL);

INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Oak House', 100, 4, 'Orange');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Owens Park', 30, 4, 'Orange');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('AMBS', 400, NULL, 'Blue');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Co-OP', 30, 3, 'Blue');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Kilburn', 120, NULL, 'Yellow');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Uni Place', 100, 1, 'Yellow');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Victoria', 75, 2, 'Green');
INSERT INTO properties (property_name, purchase_cost, owner_id, colour) VALUES ('Piccadilly', 35, NULL, 'Green');

INSERT INTO audit_trail (player_id, bank_balance, location, round_number) VALUES (4, 250, 'Kilburn', NULL);
INSERT INTO audit_trail (player_id, bank_balance, location, round_number) VALUES (3, 150, 'AMBS', NULL);
INSERT INTO audit_trail (player_id, bank_balance, location, round_number) VALUES (2, 500, 'Owens Park', NULL);
INSERT INTO audit_trail (player_id, bank_balance, location, round_number) VALUES (1, 190, 'Free Parking', NULL);

