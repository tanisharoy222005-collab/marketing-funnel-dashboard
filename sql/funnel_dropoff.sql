WITH funnel AS (

SELECT
  COUNTIF(event_name='session_start') AS sessions,
  COUNTIF(event_name='user_engagement') AS engaged_sessions,
  COUNTIF(event_name='cta_click') AS cta_clicks,
  COUNTIF(event_name='form_start') AS form_starts,
  COUNTIF(event_name='generate_lead') AS leads

FROM
  `project.analytics.events_*`

)

SELECT
  *,
  ROUND((engaged_sessions/sessions)*100,2) AS engagement_rate,
  ROUND((cta_clicks/sessions)*100,2) AS cta_rate,
  ROUND((form_starts/sessions)*100,2) AS form_start_rate,
  ROUND((leads/sessions)*100,2) AS lead_conversion_rate
FROM funnel;
