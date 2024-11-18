CREATE KEYSPACE IF NOT EXISTS game_stat WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1};
use game_stat;

--Création de la table
CREATE TABLE IF NOT EXISTS game_stat.Statistiques_Joueur(
id_data_stat uuid,
player_id text,
atk int,
def int,
xp int,
victoire int,
timestamp_stat timestamp,
PRIMARY KEY (player_id,id_data_stat)
);

--Insertion de données (CREER)
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(), '1', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'1', 4000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'1', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'1', 1000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'1', 2000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'1', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'1', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'1', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'1', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'1', 1, toTimeStamp(now()));


INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'2', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'2', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'2', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'2', 5000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'2', 4000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'2', 50, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'2', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'2', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'2', 1, toTimeStamp(now()));

INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'3', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'3', 6000, totimestamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'3', 50,toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'3', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'3', 10, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'3', 1000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'3', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'3', 1, toTimeStamp(now()));

INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'4', 100, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'4', 6000, totimestamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, xp, timestamp_stat) VALUES (now(),'4', 50,toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'4', 300, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, atk, timestamp_stat) VALUES (now(),'4', 10, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, def, timestamp_stat) VALUES (now(),'4', 1000, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'4', 1, toTimeStamp(now()));
INSERT INTO game_stat.Statistiques_Joueur(id_data_stat, player_id, victoire, timestamp_stat) VALUES (now(),'4', 1, toTimeStamp(now()));


--Selection de données (READ)
SELECT SUM(atk) as attaques, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

SELECT SUM(def) as degats_recus, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

SELECT SUM(xp) as experiences, player_id
FROM game_stat.Statistiques_Joueur
GROUP BY player_id;

--Mise à jour des données (UPDATE)
UPDATE game_stat.Statistiques_Joueur
SET xp = xp + 1000
WHERE player_id = '3' AND id_data_stat = 'id_data_stat'; --id_data_stat à modifier selon la donnée

--Suppression de données (DELETE)
DELETE FROM game_stat.Statistiques_Joueur
WHERE player_id = '4';