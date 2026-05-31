# Marketing Funnel Dashboard

A comprehensive marketing analytics and business intelligence project demonstrating how organizations can measure acquisition performance, analyze conversion funnels, evaluate campaign effectiveness, and improve marketing ROI using Google Analytics 4, Google Ads, BigQuery, SQL, CRM data, and executive dashboard reporting.

---

# Executive Summary

Marketing teams often have access to large amounts of data but struggle to connect traffic, engagement, lead generation, and revenue outcomes into a single reporting framework.

This project simulates an end-to-end marketing analytics solution that integrates:

* Google Analytics 4
* Google Ads
* CRM Lead Data
* BigQuery
* SQL Transformations
* Dashboard Reporting

The goal is to provide stakeholders with a centralized view of marketing performance and actionable business insights.

---

# Business Problem

The marketing organization lacked visibility into:

* Which acquisition channels generated the highest-quality leads
* Where users abandoned the conversion funnel
* Which landing pages contributed most to lead generation
* Whether advertising investments generated positive returns
* How marketing activities influenced revenue outcomes

Without a centralized reporting solution, campaign optimization and budget allocation decisions were difficult to make confidently.

---

# Business Objectives

The project was designed to:

* Measure acquisition performance across channels
* Analyze user progression through the marketing funnel
* Identify conversion bottlenecks
* Evaluate landing page effectiveness
* Measure campaign efficiency
* Improve lead generation performance
* Support data-driven budget allocation decisions

---

# Funnel Definition

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

# Technology Stack

| Technology         | Purpose                         |
| ------------------ | ------------------------------- |
| Google Analytics 4 | Website Analytics               |
| Google Tag Manager | Event Tracking                  |
| BigQuery           | Data Warehouse                  |
| SQL                | Data Transformation & Analysis  |
| Google Ads         | Campaign Performance            |
| Looker Studio      | Dashboard Reporting             |
| CRM Data           | Lead Quality Analysis           |
| GitHub             | Documentation & Version Control |

---

# Key Business Questions

## Acquisition

* Which channels generate the most traffic?
* Which channels generate the most leads?
* Which campaigns drive the highest conversions?

## Funnel Analysis

* Where do users drop off?
* Which stage has the highest abandonment rate?
* How efficient is the conversion funnel?

## Landing Pages

* Which pages convert best?
* Which pages require optimization?

## Campaign Performance

* Which campaigns generate the highest ROAS?
* Which campaigns produce the lowest CPL?

## Lead Quality

* Which channels generate the highest-quality leads?
* Which channels contribute the most revenue?

---

# Dashboard Pages

## Executive Overview

Key KPIs:

* Users
* Sessions
* Leads
* Conversion Rate
* Cost Per Lead (CPL)
* Return On Ad Spend (ROAS)

---

## Funnel Analysis

Tracks:

Sessions
→ Engaged Sessions
→ CTA Clicks
→ Form Starts
→ Leads

Metrics:

* Funnel Conversion Rate
* Funnel Drop-Off %
* Lead Conversion Rate

---

## Acquisition Performance

Dimensions:

* Source
* Medium
* Campaign

Metrics:

* Users
* Sessions
* Leads
* Conversion Rate

---

## Landing Page Analysis

Metrics:

* Landing Page Sessions
* Engagement Rate
* Leads
* Conversion Rate

---

## Campaign Performance

Metrics:

* Spend
* Clicks
* Conversions
* Revenue
* CPL
* ROAS

---

# Repository Structure

```text
marketing-funnel-dashboard/

├── README.md

├── architecture/
│   └── data-model.md

├── attribution/
│   └── attribution-framework.md

├── case-study/
│   └── marketing-funnel-case-study.md

├── dashboard/
│   ├── executive-summary.md
│   ├── kpi-definitions.md
│   ├── dashboard-layout.md
│   ├── looker-build-guide.md
│   ├── build-process.md
│   ├── dashboard-wireframe.png
│   └── dashboard-screenshots/

├── data/
│   ├── README.md
│   ├── ga4_sample.csv
│   ├── ads_sample.csv
│   ├── funnel_sample.csv
│   └── crm_leads.csv

├── documentation/
│   └── metric-governance.md

├── insights/
│   └── recommendations.md

├── quality/
│   └── validation-checks.sql

├── sql/
│   ├── acquisition.sql
│   ├── landing_page_performance.sql
│   ├── funnel_dropoff.sql
│   ├── sem_efficiency.sql
│   ├── lead_quality.sql
│   ├── attribution_model.sql
│   └── channel_roi.sql

├── portfolio-mapping.md

└── data-blending-notes.md
```

---

# Data Sources

## Google Analytics 4

Provides:

* Users
* Sessions
* Engagement Metrics
* Funnel Events
* Landing Page Performance

Key Events:

* session_start
* user_engagement
* cta_click
* form_start
* generate_lead

---

## Google Ads

Provides:

* Campaign Spend
* Clicks
* Impressions
* Conversions
* Revenue

---

## CRM Leads

Provides:

* Lead Score
* Deal Value
* Lead Status
* Revenue Attribution

---

# Data Model

Data from multiple sources is blended into a unified reporting layer.

Google Analytics 4
│
▼

BigQuery Export
│
▼

Marketing Event Layer
│
├───────────────┐
▼               ▼

Google Ads      CRM Leads
Campaign Data   Revenue Data

```
    └───────┬────────┘
            ▼

  Data Blending Layer
            ▼

   Funnel Dashboard
            ▼

   Executive Reporting
```

---

# SQL Analysis Included

## acquisition.sql

Analyzes:

* Source Performance
* Medium Performance
* Traffic Acquisition Trends

---

## landing_page_performance.sql

Analyzes:

* Landing Page Traffic
* Conversion Performance
* Engagement Metrics

---

## funnel_dropoff.sql

Calculates:

* Funnel Stage Conversion
* Funnel Drop-Off %
* Lead Conversion Rates

---

## sem_efficiency.sql

Measures:

* Campaign Efficiency
* Cost Per Lead
* Paid Search Performance

---

## lead_quality.sql

Evaluates:

* Lead Scores
* Pipeline Value
* Lead Quality by Channel

---

## attribution_model.sql

Supports:

* Channel Attribution
* Revenue Attribution
* Campaign Evaluation

---

## channel_roi.sql

Calculates:

* Revenue
* Cost
* ROAS
* Marketing ROI

---

# Data Quality Framework

Data validation checks include:

* Duplicate Lead Detection
* Missing Values
* Invalid Lead Scores
* Negative Revenue Checks
* Funnel Consistency Validation
* Campaign Data Completeness Checks

Reference:

quality/validation-checks.sql

---

# Attribution Framework

Current Attribution Model:

Last Touch Attribution

Purpose:

* Lead Generation Analysis
* Campaign Performance Reporting
* Marketing ROI Evaluation

Future Enhancements:

* Multi-Touch Attribution
* Position-Based Attribution
* Data-Driven Attribution

Reference:

attribution/attribution-framework.md

---

# KPI Governance

Governed Metrics Include:

* Users
* Sessions
* Engaged Sessions
* CTA Clicks
* Form Starts
* Leads
* Conversion Rate
* CPL
* ROAS

Governance Includes:

* Business Definitions
* Ownership
* Refresh Frequency
* Calculation Logic
* Validation Rules

Reference:

documentation/metric-governance.md

---

# Key Findings

Analysis identified several opportunities for optimization.

### Funnel Performance

Largest drop-off observed between:

CTA Click → Form Start

---

### Acquisition Performance

Paid Search generated:

* Strong lead volume
* Better conversion efficiency
* Lower acquisition costs

---

### Landing Pages

A small number of landing pages generated the majority of leads.

---

### Lead Quality

Lead quality varied significantly across acquisition channels.

Search and referral channels produced stronger lead scores.

---

# Recommendations

## Improve Lead Form Experience

Reduce required fields to improve form completion rates.

---

## Increase Investment in High-Performing Search Campaigns

Allocate additional budget to campaigns with strong ROAS and CPL performance.

---

## Optimize Underperforming Landing Pages

Replicate design patterns from top-performing pages.

---

## Improve Attribution Reporting

Implement multi-touch attribution for more accurate performance measurement.

---

# Expected Business Impact

Potential outcomes include:

* 10–20% increase in lead generation
* Improved conversion rates
* Reduced Cost Per Lead (CPL)
* Increased Return On Ad Spend (ROAS)
* Better marketing budget allocation
* Enhanced executive visibility

---

# Skills Demonstrated

## Analytics

* Marketing Analytics
* Funnel Analysis
* Campaign Analysis
* Lead Quality Analysis
* Attribution Analysis

## Data

* SQL
* BigQuery
* Data Modeling
* Data Blending
* Data Validation

## Reporting

* Dashboard Design
* KPI Development
* Executive Reporting
* Stakeholder Communication

## Governance

* Metric Governance
* Data Quality Frameworks
* Attribution Framework Design
* Reporting Standards

---

# Portfolio Highlights

This repository demonstrates the responsibilities commonly associated with:

* Marketing Analyst
* Senior Marketing Analyst
* Business Intelligence Analyst
* Product Analyst
* Growth Analyst
* Analytics Consultant

including:

* Requirements gathering
* Data modeling
* KPI governance
* Funnel analytics
* Attribution analysis
* Dashboard development
* Executive reporting
* Business recommendations

---

# Disclaimer

All datasets included in this repository are synthetic sample data created for portfolio purposes.

No real customer, company, or proprietary data is included.



