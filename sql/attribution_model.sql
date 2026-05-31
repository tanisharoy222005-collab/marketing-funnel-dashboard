SELECT
  source_medium,
  COUNT(*) AS attributed_leads,
  SUM(revenue) AS attributed_revenue
FROM
  `project.crm.attribution`
GROUP BY
  source_medium
ORDER BY
  attributed_revenue DESC;
