/*
Marketing Funnel Dashboard
Data Quality Validation Checks
*/

-- Check 1: Duplicate Lead IDs

SELECT
lead_id,
COUNT(*) AS duplicate_count
FROM crm_leads
GROUP BY lead_id
HAVING COUNT(*) > 1;

---------------------------------------------------

-- Check 2: Missing Lead IDs

SELECT *
FROM crm_leads
WHERE lead_id IS NULL;

---------------------------------------------------

-- Check 3: Invalid Lead Scores

SELECT *
FROM crm_leads
WHERE lead_score < 0
OR lead_score > 100;

---------------------------------------------------

-- Check 4: Negative Deal Values

SELECT *
FROM crm_leads
WHERE deal_value < 0;

---------------------------------------------------

-- Check 5: Sessions Less Than Leads

SELECT *
FROM funnel_sample
WHERE leads > sessions;

---------------------------------------------------

-- Check 6: Engaged Sessions Greater Than Sessions

SELECT *
FROM funnel_sample
WHERE engaged_sessions > sessions;

---------------------------------------------------

-- Check 7: Form Starts Greater Than CTA Clicks

SELECT *
FROM funnel_sample
WHERE form_starts > cta_clicks;

---------------------------------------------------

-- Check 8: Negative Advertising Spend

SELECT *
FROM ads_sample
WHERE cost < 0;

---------------------------------------------------

-- Check 9: Negative Revenue

SELECT *
FROM ads_sample
WHERE revenue < 0;

---------------------------------------------------

-- Check 10: Missing Campaign Names

SELECT *
FROM ads_sample
WHERE campaign_name IS NULL;
