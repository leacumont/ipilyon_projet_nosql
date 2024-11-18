CREATE KEYSPACE IF NOT EXISTS game_stat WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1};
use game_stat;

--Création de la table
CREATE TABLE IF NOT EXISTS game_stat.Statistiques_Joueur(
player_id text,
atk INT,
def INT,
xp INT,
victoire INT,
timestamp_stat timestamp,
PRIMARY KEY (player_id,timestamp_stat)
);

--Insertion de données (CREER)
INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('1', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('1', 4000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('1', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('1', 1000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('1', 2000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('1', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('1', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('1', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('1', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('1', 1, toTimeStamp(now()));


INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('2', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('2', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('2', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('2', 5000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('2', 4000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('2', 50, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('2', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('2', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('2', 1, toTimeStamp(now()));

INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('3', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('3', 6000, totimestamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('3', 50,toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('3', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('3', 10, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('3', 1000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('3', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('3', 1, toTimeStamp(now()));

INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('4', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('4', 6000, totimestamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, xp, timestamp_stat) VALUES ('4', 50,toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('4', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, atk, timestamp_stat) VALUES ('4', 10, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, def, timestamp_stat) VALUES ('4', 1000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('4', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur( player_id, victoire, timestamp_stat) VALUES ('4', 1, toTimeStamp(now()));


--Selection de données (READ)
SELECT SUM(atk) as attaques, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

SELECT SUM(def) as degats_recus, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

SELECT SUM(xp) as experiences_gagnees, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

SELECT SUM(victoire) as victoires_remportees, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

--Mise à jour des données (UPDATE)
UPDATE game_stat.Statistiques_Joueur
SET xp = 3000
WHERE player_id = '1' AND timestamp_stat >= '2024-12-20 00:00:00' AND timestamp_stat < '2024-12-21 00:00:00';

--Suppression de données (DELETE)
DELETE FROM game_stat.Statistiques_Joueur
WHERE player_id = '4';
