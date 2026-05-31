-- Landing Page Performance

SELECT
page_location,
COUNT(*) AS page_views
FROM analytics.events
WHERE event_name = 'page_view'
GROUP BY page_location
ORDER BY page_views DESC;

-- So What:
-- Reveals highest traffic landing pages.
-- Helps prioritize optimization efforts.
