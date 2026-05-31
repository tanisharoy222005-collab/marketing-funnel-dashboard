# Marketing Funnel Dashboard

A business intelligence project demonstrating how marketing performance can be measured across the customer acquisition funnel using Google Analytics 4, Google Ads, BigQuery, SQL, and dashboard reporting.

---

## Project Overview

Organizations often struggle to connect website traffic, campaign performance, and lead generation outcomes into a single reporting framework.

This project simulates a real-world marketing analytics solution that combines web analytics, advertising data, and CRM lead information to provide a unified view of marketing effectiveness.

The dashboard enables stakeholders to:

* Monitor acquisition performance
* Analyze funnel conversion rates
* Identify drop-off points
* Evaluate landing page effectiveness
* Measure campaign ROI
* Optimize marketing spend

---

## Business Objectives

* Measure channel performance across acquisition sources
* Understand user progression through the marketing funnel
* Identify conversion bottlenecks
* Evaluate paid media efficiency
* Improve lead generation outcomes
* Support budget allocation decisions

---

## Funnel Stages

Website Session

↓

Engaged Session

↓

CTA Click

↓

Form Start

↓

Lead Generation

---

## Tools & Technologies

| Tool               | Purpose                          |
| ------------------ | -------------------------------- |
| Google Analytics 4 | Website analytics                |
| Google Tag Manager | Event tracking                   |
| BigQuery           | Data warehouse                   |
| SQL                | Data transformation and analysis |
| Google Ads         | Campaign performance             |
| Looker Studio      | Dashboard reporting              |
| CRM Data           | Lead quality analysis            |

---

## Key Metrics

### Acquisition Metrics

* Users
* Sessions
* Traffic Source
* Medium
* Campaign

### Funnel Metrics

* Engaged Sessions
* CTA Clicks
* Form Starts
* Leads
* Funnel Drop-Off %

### Conversion Metrics

* Conversion Rate
* Lead Conversion Rate
* Qualified Leads

### Advertising Metrics

* Spend
* Clicks
* Conversions
* Cost Per Lead (CPL)
* Return On Ad Spend (ROAS)

---

## Repository Structure

```text
marketing-funnel-dashboard/

├── README.md

├── architecture/
│   └── data-model.md

├── data/
│   ├── README.md
│   ├── ga4_sample.csv
│   ├── ads_sample.csv
│   ├── funnel_sample.csv
│   └── crm_leads.csv

├── dashboard/
│   ├── executive-summary.md
│   ├── kpi-definitions.md
│   ├── dashboard-layout.md
│   ├── looker-build-guide.md
│   ├── dashboard-wireframe.png
│   └── dashboard-screenshots/

├── insights/
│   └── recommendations.md

├── sql/
│   ├── acquisition.sql
│   ├── landing_page_performance.sql
│   ├── funnel_dropoff.sql
│   ├── sem_efficiency.sql
│   ├── lead_quality.sql
│   ├── attribution_model.sql
│   └── channel_roi.sql

└── data-blending-notes.md
```

---

## Data Sources

### Google Analytics 4

Provides:

* Users
* Sessions
* Engagement metrics
* Landing page performance
* Conversion events

### Google Ads

Provides:

* Campaign spend
* Clicks
* Impressions
* Conversions
* Revenue

### CRM Leads

Provides:

* Lead quality scores
* Deal value
* Lead status
* Revenue attribution

---

## Dashboard Pages

### Executive Overview

Displays:

* Users
* Sessions
* Leads
* Conversion Rate
* CPL
* ROAS

---

### Funnel Analysis

Tracks user progression:

Sessions
→ Engaged Sessions
→ CTA Clicks
→ Form Starts
→ Leads

---

### Acquisition Performance

Analyzes:

* Source
* Medium
* Campaign
* Conversion performance

---

### Landing Page Analysis

Measures:

* Landing page traffic
* Engagement rate
* Lead generation
* Conversion efficiency

---

### Paid Media Performance

Evaluates:

* Spend
* Leads
* Cost Per Lead
* ROAS

---

## SQL Analysis Included

### acquisition.sql

Traffic source and medium analysis.

### landing_page_performance.sql

Landing page engagement and conversion analysis.

### funnel_dropoff.sql

Marketing funnel conversion and drop-off calculations.

### sem_efficiency.sql

Paid search performance evaluation.

### lead_quality.sql

Lead score and pipeline value analysis.

### attribution_model.sql

Revenue attribution by marketing channel.

### channel_roi.sql

Return on investment analysis by acquisition source.

---

## Sample Insights

Key findings from the analysis include:

* Significant drop-off between CTA Click and Form Start
* Paid Search delivers the strongest lead performance
* Organic Search generates sustainable traffic growth
* Landing page performance varies significantly by campaign
* Lead quality differs across acquisition channels

---

## Recommendations

* Simplify lead forms
* Improve landing page conversion rates
* Increase investment in high-performing campaigns
* Optimize audience targeting
* Implement multi-touch attribution reporting

---

## Portfolio Skills Demonstrated

* Marketing Analytics
* Funnel Analysis
* KPI Development
* Dashboard Design
* SQL Analysis
* BigQuery Data Modeling
* Data Blending
* Attribution Analysis
* Lead Quality Reporting
* Business Intelligence Reporting

---

## Disclaimer

This project uses synthetic sample data created for educational and portfolio purposes. No real customer or business data is included.


