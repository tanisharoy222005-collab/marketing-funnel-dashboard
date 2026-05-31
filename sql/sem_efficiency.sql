-- Paid Search Efficiency

SELECT
campaign_name,
SUM(cost) AS spend,
SUM(conversions) AS conversions,
SUM(cost)/NULLIF(SUM(conversions),0) AS cost_per_conversion
FROM ads_data
GROUP BY campaign_name;

-- So What:
-- Measures campaign profitability.
-- Identifies opportunities to improve ROI.
