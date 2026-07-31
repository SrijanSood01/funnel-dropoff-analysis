CREATE DATABASE data_analytics;
USE data_analytics;
SHOW DATABASES;
CREATE TABLE funnel_events (user_id VARCHAR(20),step VARCHAR(50),event_time DATETIME);
DESCRIBE funnel_events;
SELECT * FROM funnel_events;
SELECT * FROM funnel_events_sample;
SELECT
    step,
    COUNT(DISTINCT user_id) AS users
FROM funnel_events_sample
GROUP BY step;

SELECT
    step,
    COUNT(DISTINCT user_id) AS users
FROM funnel_events_sample
GROUP BY step
ORDER BY
CASE
    WHEN step='visited_site' THEN 1
    WHEN step='signup_started' THEN 2
    WHEN step='details_filled' THEN 3
    WHEN step='email_verified' THEN 4
    WHEN step='purchase_completed' THEN 5
END;


SELECT
    step,
    COUNT(DISTINCT user_id) AS users
FROM funnel_events_sample
GROUP BY step
ORDER BY
CASE
    WHEN step='visited_site' THEN 1
    WHEN step='signup_started' THEN 2
    WHEN step='details_filled' THEN 3
    WHEN step='email_verified' THEN 4
    WHEN step='purchase_completed' THEN 5
END;


SELECT
    COUNT(DISTINCT user_id) AS unique_users
FROM funnel_events_sample;

SELECT *
FROM funnel_events_sample
WHERE step='purchase_completed';

SELECT *
FROM funnel_events_sample
WHERE step='email_verified';

SELECT
    step,
    COUNT(*) AS total
FROM funnel_events_sample
GROUP BY step;