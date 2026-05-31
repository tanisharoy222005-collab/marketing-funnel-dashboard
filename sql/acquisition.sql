SELECT
  traffic_source.source AS source,
  traffic_source.medium AS medium,
  COUNT(DISTINCT user_pseudo_id) AS users,
  COUNT(*) AS sessions
FROM
  `project.analytics.events_*`
GROUP BY
  source,
  medium
ORDER BY
  sessions DESC;
