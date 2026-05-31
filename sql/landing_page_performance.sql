WITH landing_pages AS (
  SELECT
    event_date,
    page_location,
    COUNT(*) AS sessions
  FROM
    `project.analytics.events_*`
  WHERE event_name = 'session_start'
  GROUP BY
    event_date,
    page_location
)

SELECT
  page_location,
  SUM(sessions) AS total_sessions
FROM
  landing_pages
GROUP BY
  page_location
ORDER BY
  total_sessions DESC;
