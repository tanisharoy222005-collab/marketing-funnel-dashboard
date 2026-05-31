/*
Lead Quality Mart
*/

SELECT

source_medium,

COUNT(*) AS leads,

AVG(lead_score) AS avg_lead_score,

AVG(deal_value) AS avg_pipeline_value

FROM stg_crm_leads

GROUP BY source_medium;
