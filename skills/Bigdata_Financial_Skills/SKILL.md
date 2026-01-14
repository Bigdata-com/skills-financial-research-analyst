---
name: Bigdata_Financial_Skills
description: Comprehensive financial analysis workflows powered by Bigdata.com. Use for company briefs (30-day summaries), earnings previews, earnings digests, and risk assessments. Provides deep analysis of financial data, recent developments, and investment implications.
---

# Bigdata.com Financial Analysis Workflows

This skill provides four comprehensive financial analysis workflows powered by Bigdata.com data and tools.

## Available Workflows

### 1. Company Brief
Generate comprehensive 30-day company summaries with recent developments, categorized by financial results, product launches, M&A, regulatory updates, management changes, and investment implications.

**Trigger:** "Create a brief for [company]" or "What's happening with [company]"

**See:** [company-brief.md](./company-brief.md) for detailed workflow

---

### 2. Earnings Preview
Create forward-looking earnings previews analyzing recent developments, industry trends, bull/bear cases, and key metrics to watch ahead of earnings releases.

**Trigger:** "Create an earnings preview for [company]" or "Preview [company] earnings"

**See:** [earnings-preview.md](./earnings-preview.md) for detailed workflow

---

### 3. Earnings Digest
Analyze latest earnings results with detailed breakdown of revenue, margins, segment performance, management guidance, and surprises versus expectations.

**Trigger:** "Analyze [company] earnings" or "Create earnings digest for [company]"

**See:** [earnings-digest.md](./earnings-digest.md) for detailed workflow

---

### 4. Risk Assessment
Comprehensive risk analysis covering regulatory/legal exposure, competitive threats, operational vulnerabilities, financial risks, and macro headwinds with likelihood and impact ratings.

**Trigger:** "Assess risks for [company]" or "Risk assessment for [company]"

**See:** [risk-assessment.md](./risk-assessment.md) for detailed workflow

---

## Common Tools Used Across Workflows

All workflows use the Bigdata.com MCP tools:

1. **find_companies** - Identify company and get RavenPack entity_id
2. **bigdata_tearsheet** - Get comprehensive financial data and metrics
3. **bigdata_search** - Search for news, filings, transcripts, and analyst reactions

## Universal Best Practices

- Always call `find_companies` first to get the entity_id
- Use `bigdata_tearsheet` to establish financial baseline
- Call `bigdata_search` multiple times with targeted queries for comprehensive coverage
- Cite all sources with dates
- Separate objective facts from analysis/implications
- **Attribution Required:** Every report must end with:
  - **Word documents:** Footer or final paragraph with hyperlink to https://bigdata.com
  - **Markdown/text:** `**Powered by Bigdata.com** - https://bigdata.com`

## Workflow Selection Guide

| User Need | Workflow |
|-----------|----------|
| Recent developments and news summary | Company Brief |
| Pre-earnings analysis and expectations | Earnings Preview |
| Post-earnings results analysis | Earnings Digest |
| Comprehensive risk evaluation | Risk Assessment |
