/*
Marketing Funnel Mart
*/

SELECT

date,

SUM(users) AS users,
SUM(sessions) AS sessions,
SUM(engaged_sessions) AS engaged_sessions,
SUM(cta_clicks) AS cta_clicks,
SUM(form_starts) AS form_starts,
SUM(leads) AS leads,

ROUND(
SUM(leads) /
NULLIF(SUM(sessions),0),
4
) AS conversion_rate

FROM stg_ga4_events

GROUP BY date
ORDER BY date;
