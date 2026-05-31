/*
Campaign Performance Mart
*/

SELECT

campaign_name,

SUM(cost) AS spend,
SUM(clicks) AS clicks,
SUM(conversions) AS conversions,
SUM(revenue) AS revenue,

ROUND(
SUM(revenue) /
NULLIF(SUM(cost),0),
2
) AS roas

FROM stg_ads

GROUP BY campaign_name;
