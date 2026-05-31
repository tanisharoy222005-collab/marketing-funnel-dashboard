SELECT

  COUNT(DISTINCT user_pseudo_id) AS users,

  COUNTIF(event_name='session_start') AS sessions,

  COUNTIF(event_name='generate_lead') AS leads,

  ROUND(
    COUNTIF(event_name='generate_lead')
    /
    COUNTIF(event_name='session_start')
    *100,
    2
  ) AS conversion_rate,

  ROUND(
    SUM(cost)
    /
    NULLIF(COUNTIF(event_name='generate_lead'),0),
    2
  ) AS cost_per_lead,

  ROUND(
    SUM(revenue)
    /
    NULLIF(SUM(cost),0),
    2
  ) AS roas

FROM
  `project.analytics.marketing_dashboard`;
