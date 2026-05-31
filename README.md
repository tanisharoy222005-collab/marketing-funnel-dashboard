# Marketing Funnel Dashboard

A production-style Marketing Analytics and Business Intelligence project demonstrating how Google Analytics 4, Google Ads, CRM data, SQL, BigQuery-style modeling, and executive dashboards can be combined to measure marketing effectiveness and optimize lead generation.

---

## Executive Summary

Organizations often collect marketing data from multiple platforms but struggle to connect traffic acquisition, user engagement, lead generation, and revenue outcomes into a unified reporting framework.

This project demonstrates the design of a centralized marketing analytics solution that enables stakeholders to:

- Measure acquisition performance
- Monitor funnel conversion rates
- Identify conversion bottlenecks
- Evaluate landing page effectiveness
- Assess campaign ROI
- Analyze lead quality
- Support marketing budget allocation decisions

The solution combines web analytics, advertising data, CRM data, SQL transformations, KPI governance, attribution reporting, and dashboard design into a single analytics ecosystem.

---

# Business Problem

Marketing teams lacked visibility into:

- Which channels generated the highest-quality leads
- Where users abandoned the funnel
- Which campaigns delivered the highest ROI
- Which landing pages generated conversions
- How marketing activity contributed to revenue

As a result, campaign optimization decisions were often made without a complete view of performance.

---

# Business Objectives

The project was designed to answer:

## Acquisition

- Which channels drive the most traffic?
- Which channels generate the most leads?
- Which campaigns perform best?

## Funnel Analysis

- Where do users drop off?
- Which stages require optimization?
- How efficient is the conversion journey?

## Landing Pages

- Which landing pages convert best?
- Which pages should be optimized?

## Campaign Performance

- Which campaigns generate the highest ROAS?
- Which campaigns have the lowest CPL?

## Lead Quality

- Which channels generate high-value leads?
- Which channels contribute most revenue?

---

# Funnel Definition

Session

↓

Engaged Session

↓

CTA Click

↓

Form Start

↓

Lead

---

# Technology Stack

| Technology | Purpose |
|------------|----------|
| Google Analytics 4 | Web Analytics |
| Google Tag Manager | Event Tracking |
| Google Ads | Campaign Data |
| CRM | Lead & Revenue Data |
| SQL | Data Transformation |
| BigQuery | Data Warehouse |
| Looker Studio | Dashboarding |
| GitHub | Documentation & Version Control |

---

# Solution Architecture

```text
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

        └───────┬────────┘
                ▼

      Data Blending Layer
                ▼

    Reporting Data Marts
                ▼

       Dashboard Layer
                ▼

     Executive Reporting
```

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

├── requirements/
│   └── stakeholder-requirements.md

├── testing/
│   └── dashboard-uat.md

├── warehouse/
│   ├── staging/
│   │   ├── stg_ga4_events.sql
│   │   ├── stg_ads.sql
│   │   └── stg_crm_leads.sql
│   │
│   ├── marts/
│   │   ├── mart_marketing_funnel.sql
│   │   ├── mart_campaign_performance.sql
│   │   └── mart_lead_quality.sql
│   │
│   ├── views/
│   │   ├── vw_dashboard_kpis.sql
│   │   └── vw_campaign_summary.sql
│   │
│   └── schema.yml

├── sql/
│   ├── acquisition.sql
│   ├── landing_page_performance.sql
│   ├── funnel_dropoff.sql
│   ├── sem_efficiency.sql
│   ├── lead_quality.sql
│   ├── attribution_model.sql
│   └── channel_roi.sql

├── CHANGELOG.md

├── ROADMAP.md

├── portfolio-mapping.md

└── data-blending-notes.md
```

---

# Data Sources

## Google Analytics 4

Provides:

- Users
- Sessions
- Engagement Metrics
- Funnel Events
- Landing Page Analysis

Tracked Events:

- session_start
- user_engagement
- cta_click
- form_start
- generate_lead

---

## Google Ads

Provides:

- Campaign Spend
- Impressions
- Clicks
- Conversions
- Revenue

---

## CRM Data

Provides:

- Lead Quality Scores
- Deal Values
- Revenue Attribution
- Lead Status

---

# Data Warehouse Layer

The warehouse follows a modern analytics engineering pattern.

## Staging Layer

Purpose:

Standardize raw source data.

Models:

- stg_ga4_events
- stg_ads
- stg_crm_leads

---

## Mart Layer

Purpose:

Business-ready reporting models.

Models:

- mart_marketing_funnel
- mart_campaign_performance
- mart_lead_quality

---

## View Layer

Purpose:

Dashboard consumption layer.

Views:

- vw_dashboard_kpis
- vw_campaign_summary

---

# KPI Governance

Governed Metrics Include:

- Users
- Sessions
- Engaged Sessions
- CTA Clicks
- Form Starts
- Leads
- Conversion Rate
- CPL
- ROAS

Reference:

documentation/metric-governance.md

---

# Data Quality Framework

Validation checks include:

- Duplicate detection
- Missing value checks
- Funnel consistency validation
- Revenue validation
- Campaign completeness validation

Reference:

quality/validation-checks.sql

---

# Attribution Framework

Current Model:

Last Touch Attribution

Supported Metrics:

- Leads
- Revenue
- CPL
- ROAS

Future Enhancements:

- Multi-Touch Attribution
- Position-Based Attribution
- Data-Driven Attribution

Reference:

attribution/attribution-framework.md

---

# Dashboard Deliverables

## Executive Overview

KPIs:

- Users
- Sessions
- Leads
- Conversion Rate
- CPL
- ROAS

---

## Funnel Dashboard

Measures:

- Funnel Conversion
- Funnel Drop-Off
- Lead Generation Efficiency

---

## Acquisition Dashboard

Measures:

- Source Performance
- Medium Performance
- Campaign Performance

---

## Landing Page Dashboard

Measures:

- Engagement
- Lead Generation
- Conversion Rate

---

## Campaign Dashboard

Measures:

- Spend
- Revenue
- ROAS
- CPL

---

# SQL Analysis

The project includes analytical SQL covering:

- Acquisition Analysis
- Funnel Analysis
- Landing Page Performance
- Campaign Efficiency
- Lead Quality
- Attribution
- ROI Analysis

---

# Key Findings

### Funnel Optimization Opportunity

Largest drop-off:

CTA Click → Form Start

---

### Campaign Performance

Paid Search generated:

- Higher lead volume
- Better conversion efficiency
- Stronger ROAS

---

### Landing Pages

Top-performing landing pages generated a disproportionate share of conversions.

---

### Lead Quality

Search and referral channels generated higher-quality leads than social channels.

---

# Recommendations

### Short-Term

- Simplify lead forms
- Improve landing page UX
- Optimize campaign targeting

### Medium-Term

- Expand high-performing search campaigns
- Implement A/B testing
- Improve attribution visibility

### Long-Term

- Multi-touch attribution
- Predictive lead scoring
- Marketing forecasting

---

# Testing & Validation

User Acceptance Testing (UAT) includes:

- KPI Validation
- Conversion Rate Validation
- CPL Validation
- ROAS Validation
- Funnel Integrity Testing
- Campaign Reporting Validation

Reference:

testing/dashboard-uat.md

---

# Business Impact

Potential outcomes from implementing recommendations:

- 10–20% increase in lead generation
- Improved conversion rates
- Lower Cost Per Lead
- Better budget allocation
- Increased marketing ROI
- Enhanced executive visibility

---

# Skills Demonstrated

## Marketing Analytics

- Funnel Analysis
- Channel Performance Analysis
- Lead Quality Analysis
- Attribution Analysis

## Data Analytics

- SQL
- Data Modeling
- Data Warehousing
- Data Validation

## Business Intelligence

- Dashboard Design
- KPI Development
- Executive Reporting
- Stakeholder Communication

## Analytics Engineering

- Staging Models
- Data Marts
- Semantic Layer Design
- Documentation & Governance

---

# Portfolio Positioning

This project demonstrates responsibilities commonly associated with:

- Marketing Analyst
- Senior Marketing Analyst
- Business Intelligence Analyst
- Growth Analyst
- Analytics Engineer
- Analytics Consultant

including:

- Requirements Gathering
- Data Modeling
- KPI Governance
- Attribution Design
- Dashboard Development
- Data Quality Management
- Executive Reporting
- Strategic Recommendations

---

# Disclaimer

All datasets included in this repository are synthetic sample data created solely for  portfolio purposes.

No real customer, company, or proprietary data is included.
