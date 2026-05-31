-- Acquisition Performance Analysis

SELECT
traffic_source.source,
traffic_source.medium,
COUNT(*) AS sessions,
COUNT(DISTINCT user_pseudo_id) AS users
FROM analytics.events
GROUP BY 1,2
ORDER BY sessions DESC;

-- So What:
-- Identifies top-performing traffic channels.
-- Supports acquisition budget allocation.
