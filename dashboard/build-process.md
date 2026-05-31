# Dashboard Build Process

## Objective

Develop a centralized marketing performance dashboard combining web analytics, advertising data, and CRM lead information.

---

# Step 1: Collect Source Data

Sources

* Google Analytics 4
* Google Ads
* CRM Leads

Data Export Method

* BigQuery Export
* CSV Imports

---

# Step 2: Validate Data

Checks Performed

* Duplicate detection
* Missing values
* Invalid metrics
* Data completeness

Reference:

quality/validation-checks.sql

---

# Step 3: Build Data Model

Combine:

* Website Analytics
* Campaign Performance
* CRM Lead Data

Keys

* Date
* Campaign
* Source
* Medium

---

# Step 4: Create SQL Transformations

Files Used

* acquisition.sql
* funnel_dropoff.sql
* landing_page_performance.sql
* sem_efficiency.sql
* lead_quality.sql
* attribution_model.sql
* channel_roi.sql

---

# Step 5: Define KPIs

Metrics

* Users
* Sessions
* Leads
* Conversion Rate
* CPL
* ROAS

Reference

dashboard/kpi-definitions.md

---

# Step 6: Build Dashboard Pages

1. Executive Overview
2. Funnel Analysis
3. Acquisition Analysis
4. Landing Page Performance
5. Campaign Performance

---

# Step 7: Validate Metrics

Verify:

* SQL outputs
* Dashboard totals
* KPI calculations

---

# Step 8: Publish Dashboard

Final Deliverables

* Executive Dashboard
* Funnel Reporting
* Campaign Reporting
* Stakeholder Documentation
