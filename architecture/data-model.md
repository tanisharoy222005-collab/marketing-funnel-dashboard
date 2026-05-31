# Marketing Funnel Dashboard Data Model

## Overview

This project combines data from Google Analytics 4, Google Ads, and CRM systems to provide a complete view of the customer acquisition funnel.

The model supports:

* Acquisition analysis
* Funnel performance reporting
* Campaign effectiveness measurement
* Lead generation tracking
* Marketing ROI analysis

---

# Data Sources

## Google Analytics 4

Purpose:
Website behavior and conversion tracking.

Key Fields:

| Field          | Description               |
| -------------- | ------------------------- |
| event_date     | Event date                |
| user_pseudo_id | Unique visitor identifier |
| session_id     | Session identifier        |
| source         | Traffic source            |
| medium         | Traffic medium            |
| campaign       | Marketing campaign        |
| page_location  | Landing page URL          |
| event_name     | User interaction event    |

---

## Google Ads

Purpose:
Campaign performance and advertising costs.

Key Fields:

| Field         | Description       |
| ------------- | ----------------- |
| campaign_name | Campaign name     |
| cost          | Advertising spend |
| clicks        | Ad clicks         |
| impressions   | Ad impressions    |
| conversions   | Generated leads   |

---

## CRM Leads

Purpose:
Lead quality and revenue attribution.

Key Fields:

| Field         | Description            |
| ------------- | ---------------------- |
| lead_id       | Unique lead identifier |
| lead_score    | Lead quality score     |
| deal_value    | Revenue opportunity    |
| source_medium | Marketing source       |
| created_date  | Lead creation date     |

---

# Funnel Stages

The dashboard tracks users through the following marketing funnel:

Sessions
↓
Engaged Sessions
↓
CTA Clicks
↓
Form Starts
↓
Leads

---

# Data Relationships

GA4 Events
│
├── Sessions
├── Engagement Events
├── CTA Click Events
└── Lead Events
│
▼

Campaign Metadata
│
├── Source
├── Medium
└── Campaign
│
▼

Google Ads Cost Data
│
├── Spend
├── Clicks
└── Conversions
│
▼

CRM Leads
│
├── Lead Score
├── Deal Value
└── Revenue

---

# Blending Keys

The following dimensions are used for data integration:

| Key          | Purpose                |
| ------------ | ---------------------- |
| event_date   | Time alignment         |
| source       | Channel reporting      |
| medium       | Traffic classification |
| campaign     | Campaign analysis      |
| landing_page | Landing page reporting |

---

# Calculated Metrics

## Engagement Rate

Engaged Sessions ÷ Sessions

---

## Lead Conversion Rate

Leads ÷ Sessions

---

## Cost Per Lead (CPL)

Advertising Spend ÷ Leads

---

## Return On Ad Spend (ROAS)

Revenue ÷ Advertising Spend

---

# Dashboard Outputs

The final model powers:

1. Executive KPI Dashboard
2. Marketing Funnel Analysis
3. Landing Page Performance Reporting
4. Channel Acquisition Analysis
5. Paid Media Performance Dashboard
6. Lead Quality Reporting
7. ROI and Attribution Analysis

---

# Architecture Diagram

Google Analytics 4
│
▼
BigQuery Export
│
▼
Marketing Events
│
├──────────────┐
▼              ▼

Google Ads      CRM Leads
Cost Data       Revenue Data
│              │
└──────┬───────┘
▼

```
  Data Blending Layer
           │
           ▼

 Marketing Funnel Model
           │
           ▼

    Looker Studio
           │
           ▼

  Executive Dashboard

