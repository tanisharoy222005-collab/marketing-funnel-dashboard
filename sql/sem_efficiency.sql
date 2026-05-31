SELECT
  campaign_name,
  SUM(cost) AS spend,
  SUM(clicks) AS clicks,
  SUM(conversions) AS leads,
  ROUND(SUM(cost)/SUM(conversions),2) AS cost_per_lead
FROM
  `project.marketing.google_ads_campaigns`
GROUP BY
  campaign_name
ORDER BY
  cost_per_lead ASC;
