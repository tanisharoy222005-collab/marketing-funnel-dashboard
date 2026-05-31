-- Funnel Progression Analysis

SELECT
event_name,
COUNT(*) AS users
FROM analytics.events
WHERE event_name IN (
'page_view',
'cta_click',
'form_start',
'generate_lead'
)
GROUP BY event_name;

-- So What:
-- Measures user progression through the funnel.
-- Identifies conversion bottlenecks.
