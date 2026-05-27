// NOTE: The following script syntax is valid for database version 5.0 and above.

:param {
  // Define the file path root and the individual file names required for loading.
  // https://neo4j.com/docs/operations-manual/current/configuration/file-locations/
  file_path_root: 'file:///', // Change this to the folder your script can access the files at.
  file_0: 'FIFA_Goal_Scorer.csv'
};

// CONSTRAINT creation
// -------------------
//
// Create node and relationship constraints, ensuring no duplicates for the given node label or relationship type and their ID property(ies) exist in the database. This also ensures no duplicates are introduced in future.
//
CREATE CONSTRAINT `PLAYED_AT_FIFA_World_Cup_key` IF NOT EXISTS
FOR (n: `FIFA World Cup`)
REQUIRE (n.`PLAYED_AT`) IS NODE KEY;
CREATE CONSTRAINT `player_name_matches_goals_country_Player_Name_key` IF NOT EXISTS
FOR (n: `Player_Name`)
REQUIRE (n.`player_name`, n.`matches`, n.`goals`, n.`country`) IS NODE KEY;
CREATE CONSTRAINT `player_name_matches_goals_country_Player_Name_key` IF NOT EXISTS
FOR (n: `Player_Name`)
REQUIRE (n.`player_name`, n.`matches`, n.`goals`, n.`country`) IS NODE KEY;
CREATE CONSTRAINT `player_name_matches_goals_country_Player_Name_key` IF NOT EXISTS
FOR (n: `Player_Name`)
REQUIRE (n.`player_name`, n.`matches`, n.`goals`, n.`country`) IS NODE KEY;
CREATE CONSTRAINT `player_name_matches_goals_country_Player_Name_key` IF NOT EXISTS
FOR (n: `Player_Name`)
REQUIRE (n.`player_name`, n.`matches`, n.`goals`, n.`country`) IS NODE KEY;
CREATE CONSTRAINT `player_name_matches_goals_country_Player_Name_key` IF NOT EXISTS
FOR (n: `Player_Name`)
REQUIRE (n.`player_name`, n.`matches`, n.`goals`, n.`country`) IS NODE KEY;

:param {
  idsToSkip: []
};

// NODE load
// ---------
//
// Load nodes in batches, one node label at a time. Nodes will be created using a MERGE statement to ensure a node with the same label and ID property remains unique. Pre-existing nodes found by a MERGE statement will have their other properties set to the latest values encountered in a load file.
//
// NOTE: Any nodes with IDs in the 'idsToSkip' list parameter will not be loaded.
LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`PLAYED_AT` IN $idsToSkip AND NOT row.`PLAYED_AT` IS NULL
CALL (row) {
  MERGE (n: `FIFA World Cup` { `PLAYED_AT`: row.`PLAYED_AT` })
  SET n.`PLAYED_AT` = row.`PLAYED_AT`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`player_name` IN $idsToSkip AND NOT row.`player_name` IS NULL AND NOT row.`matches` IN $idsToSkip AND NOT toInteger(trim(row.`matches`)) IS NULL AND NOT row.`goals` IN $idsToSkip AND NOT toInteger(trim(row.`goals`)) IS NULL AND NOT row.`country` IN $idsToSkip AND NOT row.`country` IS NULL
CALL (row) {
  MERGE (n: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  SET n.`player_name` = row.`player_name`
  SET n.`matches` = toInteger(trim(row.`matches`))
  SET n.`goals` = toInteger(trim(row.`goals`))
  SET n.`country` = row.`country`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`player_name` IN $idsToSkip AND NOT row.`player_name` IS NULL AND NOT row.`matches` IN $idsToSkip AND NOT toInteger(trim(row.`matches`)) IS NULL AND NOT row.`goals` IN $idsToSkip AND NOT toInteger(trim(row.`goals`)) IS NULL AND NOT row.`country` IN $idsToSkip AND NOT row.`country` IS NULL
CALL (row) {
  MERGE (n: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  SET n.`player_name` = row.`player_name`
  SET n.`matches` = toInteger(trim(row.`matches`))
  SET n.`goals` = toInteger(trim(row.`goals`))
  SET n.`country` = row.`country`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`player_name` IN $idsToSkip AND NOT row.`player_name` IS NULL AND NOT row.`matches` IN $idsToSkip AND NOT toInteger(trim(row.`matches`)) IS NULL AND NOT row.`goals` IN $idsToSkip AND NOT toInteger(trim(row.`goals`)) IS NULL AND NOT row.`country` IN $idsToSkip AND NOT row.`country` IS NULL
CALL (row) {
  MERGE (n: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  SET n.`player_name` = row.`player_name`
  SET n.`matches` = toInteger(trim(row.`matches`))
  SET n.`goals` = toInteger(trim(row.`goals`))
  SET n.`country` = row.`country`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`player_name` IN $idsToSkip AND NOT row.`player_name` IS NULL AND NOT row.`matches` IN $idsToSkip AND NOT toInteger(trim(row.`matches`)) IS NULL AND NOT row.`goals` IN $idsToSkip AND NOT toInteger(trim(row.`goals`)) IS NULL AND NOT row.`country` IN $idsToSkip AND NOT row.`country` IS NULL
CALL (row) {
  MERGE (n: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  SET n.`player_name` = row.`player_name`
  SET n.`matches` = toInteger(trim(row.`matches`))
  SET n.`goals` = toInteger(trim(row.`goals`))
  SET n.`country` = row.`country`
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row
WHERE NOT row.`player_name` IN $idsToSkip AND NOT row.`player_name` IS NULL AND NOT row.`matches` IN $idsToSkip AND NOT toInteger(trim(row.`matches`)) IS NULL AND NOT row.`goals` IN $idsToSkip AND NOT toInteger(trim(row.`goals`)) IS NULL AND NOT row.`country` IN $idsToSkip AND NOT row.`country` IS NULL
CALL (row) {
  MERGE (n: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  SET n.`player_name` = row.`player_name`
  SET n.`matches` = toInteger(trim(row.`matches`))
  SET n.`goals` = toInteger(trim(row.`goals`))
  SET n.`country` = row.`country`
} IN TRANSACTIONS OF 10000 ROWS;


// RELATIONSHIP load
// -----------------
//
// Load relationships in batches, one relationship type at a time. Relationships are created using a MERGE statement, meaning only one relationship of a given type will ever be created between a pair of nodes.
LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row 
CALL (row) {
  MATCH (source: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  MATCH (target: `FIFA World Cup` { `PLAYED_AT`: row.`PLAYED_AT` })
  MERGE (source)-[r: `PLAYED_AT`]->(target)
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row 
CALL (row) {
  MATCH (source: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  MATCH (target: `FIFA World Cup` { `PLAYED_AT`: row.`PLAYED_AT` })
  MERGE (source)-[r: `PLAYED_AT`]->(target)
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row 
CALL (row) {
  MATCH (source: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  MATCH (target: `FIFA World Cup` { `PLAYED_AT`: row.`PLAYED_AT` })
  MERGE (source)-[r: `PLAYED_AT`]->(target)
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row 
CALL (row) {
  MATCH (source: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  MATCH (target: `FIFA World Cup` { `PLAYED_AT`: row.`PLAYED_AT` })
  MERGE (source)-[r: `PLAYED_AT`]->(target)
} IN TRANSACTIONS OF 10000 ROWS;

LOAD CSV WITH HEADERS FROM ($file_path_root + $file_0) AS row
WITH row 
CALL (row) {
  MATCH (source: `Player_Name` { `player_name`: row.`player_name`, `matches`: toInteger(trim(row.`matches`)), `goals`: toInteger(trim(row.`goals`)), `country`: row.`country` })
  MATCH (target: `FIFA World Cup` { `PLAYED_AT`: row.`PLAYED_AT` })
  MERGE (source)-[r: `PLAYED_AT`]->(target)
} IN TRANSACTIONS OF 10000 ROWS;
