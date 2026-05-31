SELECT
  source_medium,
  SUM(cost) AS spend,
  SUM(revenue) AS revenue,
  ROUND(
    SAFE_DIVIDE(SUM(revenue), SUM(cost)),
    2
  ) AS roas
FROM
  `project.marketing.channel_performance`
GROUP BY
  source_medium
ORDER BY
  roas DESC;
