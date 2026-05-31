# Data Blending Notes

## Data Sources

### Google Analytics 4

Provides:

* Sessions
* Users
* Engagement Metrics
* Conversions

### Google Ads

Provides:

* Campaign Spend
* Clicks
* Impressions
* Conversions

---

## Join Methodology

Primary Join Keys:

* campaign_id
* date

Secondary Join Keys:

* source
* medium

---

## Purpose

The blended dataset enables:

* Cost Per Lead reporting
* Campaign ROI analysis
* Funnel performance analysis
* Channel attribution reporting

---

## Reporting Outcome

A unified reporting layer combining traffic, engagement, spend, and conversion metrics.
