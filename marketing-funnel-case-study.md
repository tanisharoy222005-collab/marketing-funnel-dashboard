# Marketing Funnel Dashboard Case Study

## Project Summary

Designed and documented a marketing analytics solution to measure acquisition performance, funnel progression, lead generation efficiency, and campaign ROI.

The solution combines data from Google Analytics 4, Google Ads, and CRM lead data to provide stakeholders with a unified view of marketing effectiveness and customer acquisition performance.

---

# Business Problem

The marketing team was increasing advertising spend but lacked visibility into:

* Which channels generated the highest-quality leads
* Where users were dropping out of the conversion funnel
* Which landing pages contributed most to lead generation
* Whether advertising investments were generating sufficient returns

As a result, budget allocation decisions were being made without clear performance insights.

---

# Business Objectives

The project was designed to answer the following questions:

### Acquisition

* Which channels drive the most traffic?
* Which channels generate the most leads?

### Funnel Performance

* Where do users abandon the funnel?
* Which stage has the highest drop-off rate?

### Landing Pages

* Which landing pages convert best?
* Which pages require optimization?

### Campaign Performance

* Which campaigns deliver the highest ROI?
* Which campaigns have the lowest Cost Per Lead (CPL)?

---

# Data Sources

## Google Analytics 4

Used for:

* Users
* Sessions
* Engagement
* Funnel Events
* Landing Page Analysis

### Key Events

* session_start
* user_engagement
* cta_click
* form_start
* generate_lead

---

## Google Ads

Used for:

* Spend
* Clicks
* Impressions
* Campaign Performance
* Conversions

---

## CRM Leads

Used for:

* Lead Quality
* Lead Status
* Deal Value
* Revenue Attribution

---

# Solution Architecture

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

# Funnel Definition

The customer acquisition funnel was defined as:

Sessions

↓

Engaged Sessions

↓

CTA Clicks

↓

Form Starts

↓

Leads

This structure allowed stakeholders to identify conversion bottlenecks and optimize user journeys.

---

# Analysis Performed

## 1. Acquisition Analysis

Analyzed traffic by:

* Source
* Medium
* Campaign

Measured:

* Users
* Sessions
* Leads
* Conversion Rate

### Key Finding

Paid Search generated the highest volume of qualified leads while maintaining strong conversion efficiency.

---

## 2. Funnel Analysis

Calculated:

* Funnel Conversion Rate
* Funnel Drop-Off %
* Lead Conversion Rate

### Key Finding

The largest drop-off occurred between:

CTA Click → Form Start

This indicated friction during the lead capture process.

---

## 3. Landing Page Analysis

Compared:

* Landing Page Sessions
* Engagement Rate
* Leads Generated
* Conversion Rate

### Key Finding

A small number of landing pages generated a disproportionate share of total leads.

---

## 4. Campaign ROI Analysis

Evaluated:

* Spend
* Conversions
* Revenue
* CPL
* ROAS

### Key Finding

Search campaigns delivered stronger ROAS compared with paid social campaigns.

---

# Recommendations

## Recommendation 1

Reduce form complexity.

### Rationale

Users were abandoning the funnel before beginning the lead form.

### Proposed Action

Reduce required fields from 8–10 to 4–5.

### Expected Impact

* Higher form completion rate
* Increased lead generation

---

## Recommendation 2

Increase investment in high-performing search campaigns.

### Rationale

Search campaigns generated:

* Higher lead volume
* Better lead quality
* Lower CPL

### Expected Impact

* More efficient acquisition
* Higher ROI

---

## Recommendation 3

Replicate top-performing landing page patterns.

### Rationale

High-converting pages demonstrated stronger engagement and conversion rates.

### Expected Impact

* Improved landing page performance
* Increased conversion efficiency

---

# Dashboard Deliverables

The final solution included:

### Executive Dashboard

KPIs:

* Users
* Sessions
* Leads
* Conversion Rate
* CPL
* ROAS

### Funnel Dashboard

Visualized:

* Funnel Stages
* Conversion Rates
* Drop-Off Percentages

### Acquisition Dashboard

Reported:

* Source Performance
* Campaign Performance
* Channel Contribution

### Landing Page Dashboard

Reported:

* Top Landing Pages
* Conversion Rates
* Lead Generation Performance

### Paid Media Dashboard

Reported:

* Campaign ROI
* Spend
* Conversions
* ROAS

---

# Business Impact

The analysis identified several opportunities to improve marketing efficiency.

Potential outcomes from implementing recommendations include:

* 10–20% increase in lead generation
* Reduced Cost Per Lead (CPL)
* Improved Return On Ad Spend (ROAS)
* Better budget allocation decisions
* Increased visibility into customer acquisition performance

---

# Skills Demonstrated

* Marketing Analytics
* Funnel Analysis
* BigQuery
* SQL
* Dashboard Design
* KPI Development
* Data Modeling
* Data Blending
* Attribution Analysis
* Stakeholder Reporting
* Business Intelligence

---

# Repository Assets

Architecture Documentation

* architecture/data-model.md

Dashboard Documentation

* dashboard/executive-summary.md
* dashboard/kpi-definitions.md
* dashboard/dashboard-layout.md
* dashboard/looker-build-guide.md

SQL Analysis

* acquisition.sql
* funnel_dropoff.sql
* landing_page_performance.sql
* sem_efficiency.sql
* lead_quality.sql
* attribution_model.sql
* channel_roi.sql

Insights

* insights/recommendations.md

Sample Data

* ga4_sample.csv
* ads_sample.csv
* funnel_sample.csv
* crm_leads.csv
