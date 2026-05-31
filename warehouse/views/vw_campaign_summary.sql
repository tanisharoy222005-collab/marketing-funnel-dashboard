/*
Campaign Summary View
*/

SELECT

campaign_name,

spend,

conversions,

revenue,

roas

FROM mart_campaign_performance

ORDER BY roas DESC;
