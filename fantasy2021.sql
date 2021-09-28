USE fantasy;

UPDATE teams
SET sos_this_year = .493
WHERE team_name = 'chargers';

-- highest scoring skilled position players
CREATE VIEW highest_scoring_skilled AS
SELECT name, total_points
FROM skilled
ORDER BY total_points DESC;

-- most games played (skilled players)
CREATE VIEW most_games_played AS
SELECT name, games_played
FROM skilled
ORDER BY games_played DESC;

-- most TD, ponts, games played for skilled players
CREATE VIEW most_TD_points_gp AS
SELECT name, games_played, total_TD, total_points
FROM skilled
ORDER BY total_TD DESC, total_points DESC, games_played DESC;

-- qb rankings
CREATE VIEW qb_ranking AS
SELECT team_name, name, average_points, total_points,
total_TD, pass_yards, rush_yards, games_played
FROM qb
ORDER BY average_points DESC, total_TD DESC;

-- workhorse rb's 
CREATE VIEW most_rb_carries AS
SELECT team_name, name, total_carries, avg_carries
FROM rb
ORDER BY total_carries DESC;

-- rb rankings
CREATE VIEW rb_rankings AS
SELECT team_name, name, average_points, total_points, 
total_TD, rush_yards, total_carries, avg_carries,
receptions, avg_receptions, games_played
FROM rb
ORDER BY average_points DESC, total_TD DESC, total_carries DESC;

-- most receptions WR
CREATE VIEW most_receptions_wr AS
SELECT team_name, name, receptions, avg_receptions, targets
FROM wr
ORDER BY receptions DESC, targets DESC;

-- wr rankings
CREATE VIEW wr_rankings AS
SELECT team_name, name, average_points, total_points,
total_TD, rec_yards, receptions, avg_receptions, games_played
FROM wr
ORDER BY average_points DESC, total_TD, receptions DESC;

-- most receptions TE
CREATE VIEW most_receptions_te AS
SELECT team_name, name, receptions, avg_receptions, targets
FROM te
ORDER BY receptions DESC, targets DESC;

-- TE rankings
CREATE VIEW te_rankings AS
SELECT team_name, name, average_points, total_points,
total_TD, rec_yards, receptions, avg_receptions, games_played
FROM te
ORDER BY average_points DESC, total_TD, receptions DESC;


-- skilled rankings
CREATE VIEW skilled_rankings AS
SELECT team_name, name, average_points, total_points,
total_TD, rec_yards, rush_yards, games_played
FROM skilled
ORDER BY average_points DESC;

-- rbs that averaged 13 or more ppg with the easiest schedule
CREATE VIEW sos_rb AS
SELECT team_id, rb.team_name, name, average_points, 
sos_this_year
FROM rb
JOIN teams USING (team_id)
WHERE average_points > 13.0
ORDER BY sos_this_year, average_points DESC;

-- qbs with the easiest schedule
CREATE VIEW sos_qb AS
SELECT team_id, qb.team_name, name, average_points, 
sos_this_year
FROM qb
JOIN teams USING (team_id)
ORDER BY sos_this_year, average_points DESC;

-- qbs that scored more than the league average of total points
CREATE VIEW above_avg_qb AS
SELECT team_name, name, average_points, total_points
FROM qb
WHERE total_points > 
(SELECT AVG(total_points) AS "avg points"
	FROM qb)
ORDER BY average_points DESC;

-- rbs that scored more than the league average of total points
CREATE VIEW above_avg_rb AS
SELECT team_name, name, average_points, total_points
FROM rb
WHERE total_points > 
(SELECT AVG(total_points) AS "avg points"
	FROM rb)
ORDER BY average_points DESC;

-- wrs that scored more than the league average of total points
CREATE VIEW above_avg_wr AS
SELECT team_name, name, average_points, total_points
FROM wr
WHERE total_points > 
(SELECT AVG(total_points) AS "avg points"
	FROM wr)
ORDER BY average_points DESC;

-- qb rankings (yahoo league)
CREATE VIEW qb_rankings_yahoo AS
SELECT team_name, name, average_points, total_points,
total_TD, pass_yards, rush_yards, games_played
FROM qb
ORDER BY total_TD DESC, average_points DESC;

-- strength of schedule
CREATE VIEW sos AS
SELECT team_name, sos_this_year, sos_last_year
FROM teams
ORDER BY sos_this_year DESC;

-- wr yards leaders
CREATE VIEW wr_yards AS
SELECT team_name, name, receptions, targets, rec_yards
FROM wr
ORDER BY rec_yards DESC;