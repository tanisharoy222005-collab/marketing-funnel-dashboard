# Metric Governance Framework

## Overview

This document defines the business metrics used throughout the Marketing Funnel Dashboard project.

The purpose of metric governance is to ensure:

* Consistent KPI definitions
* Reliable reporting
* Cross-team alignment
* Accurate executive decision-making

All dashboard calculations should reference the definitions documented below.

---

# Governance Principles

## Single Source of Truth

Metrics should be calculated from approved datasets and standardized business logic.

## Consistent Definitions

A metric must have the same definition across all reports and dashboards.

## Data Quality

All metrics should be validated regularly for completeness and accuracy.

## Business Ownership

Each metric should have a clearly defined business owner.

---

# KPI Dictionary

## Users

### Business Definition

Unique visitors interacting with the website during the reporting period.

### Calculation

Distinct user_pseudo_id

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Marketing Analytics Team

### Reporting Use Cases

* Audience Growth
* Acquisition Reporting
* Executive Dashboards

---

## Sessions

### Business Definition

Total website sessions initiated during the reporting period.

### Calculation

Count of session_start events

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Marketing Analytics Team

### Reporting Use Cases

* Traffic Analysis
* Funnel Analysis
* Channel Performance

---

## Engaged Sessions

### Business Definition

Sessions meeting GA4 engagement criteria.

### Calculation

Count of user_engagement events

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Marketing Analytics Team

### Reporting Use Cases

* Engagement Reporting
* Funnel Monitoring

---

## CTA Clicks

### Business Definition

Total clicks on primary marketing call-to-action buttons.

### Calculation

Count of cta_click events

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Marketing Team

### Reporting Use Cases

* Conversion Funnel Analysis
* Landing Page Optimization

---

## Form Starts

### Business Definition

Users initiating a lead generation form.

### Calculation

Count of form_start events

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Demand Generation Team

### Reporting Use Cases

* Funnel Analysis
* Lead Generation Reporting

---

## Leads

### Business Definition

Successful lead submissions generated through marketing channels.

### Calculation

Count of generate_lead events

### Data Source

Google Analytics 4 + CRM

### Refresh Frequency

Daily

### Business Owner

Marketing Operations

### Reporting Use Cases

* Lead Reporting
* Campaign Analysis
* Executive Reporting

---

## Engagement Rate

### Business Definition

Percentage of sessions classified as engaged.

### Calculation

Engaged Sessions ÷ Sessions

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Marketing Analytics Team

### Reporting Use Cases

* Website Performance
* User Behavior Analysis

---

## Conversion Rate

### Business Definition

Percentage of sessions resulting in a lead.

### Calculation

Leads ÷ Sessions

### Data Source

Google Analytics 4

### Refresh Frequency

Daily

### Business Owner

Marketing Analytics Team

### Reporting Use Cases

* Funnel Reporting
* Executive KPI Reporting

---

## Cost Per Lead (CPL)

### Business Definition

Average advertising cost required to generate one lead.

### Calculation

Advertising Spend ÷ Leads

### Data Source

Google Ads + CRM

### Refresh Frequency

Daily

### Business Owner

Performance Marketing Team

### Reporting Use Cases

* Campaign Optimization
* Budget Planning

---

## Return On Ad Spend (ROAS)

### Business Definition

Revenue generated for each unit of advertising spend.

### Calculation

Revenue ÷ Advertising Spend

### Data Source

Google Ads + CRM

### Refresh Frequency

Daily

### Business Owner

Performance Marketing Team

### Reporting Use Cases

* ROI Reporting
* Budget Allocation

---

# Data Quality Rules

The following validation checks should be performed before dashboard publication.

## Users

* No negative values
* No duplicate identifiers

## Sessions

* Session count should be greater than or equal to users

## Leads

* Leads should never exceed sessions

## Cost Data

* Campaign spend must be greater than or equal to zero

## Revenue Data

* Revenue values must be non-negative

---

# Change Management Process

Any KPI definition changes must include:

1. Business justification
2. Stakeholder approval
3. Documentation update
4. Dashboard update
5. Validation testing

---

# Stakeholders

| Team                 | Responsibility       |
| -------------------- | -------------------- |
| Marketing            | Campaign Performance |
| Marketing Analytics  | KPI Governance       |
| Sales Operations     | Lead Validation      |
| Executive Leadership | Strategic Reporting  |
| Finance              | Revenue Validation   |

---

# Governance Review Cycle

Metric definitions should be reviewed:

* Quarterly
* During major reporting changes
* Following tracking implementation updates
* After CRM integration changes

This process ensures that executive reporting remains accurate, trusted, and aligned with business objectives.
