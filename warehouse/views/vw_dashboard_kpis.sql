/*
Dashboard KPI View
*/

SELECT

SUM(users) AS users,

SUM(sessions) AS sessions,

SUM(leads) AS leads,

ROUND(
SUM(leads) /
NULLIF(SUM(sessions),0),
4
) AS conversion_rate

FROM mart_marketing_funnel;
