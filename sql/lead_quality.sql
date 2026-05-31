SELECT
  source_medium,
  COUNT(*) AS leads,
  AVG(lead_score) AS avg_lead_score,
  AVG(deal_value) AS avg_pipeline_value
FROM
  `project.crm.leads`
GROUP BY
  source_medium
ORDER BY
  avg_lead_score DESC;
