---
name: bigdata-financial-skills
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

- Call `find_companies` first when using `bigdata_tearsheet` or `bigdata_events_calendar` (these require entity_id)
- `bigdata_search` can be used directly without calling `find_companies` - just include company name in search query
- Use `bigdata_tearsheet` to establish financial baseline when detailed company data is needed
- Call `bigdata_search` multiple times with targeted queries for comprehensive coverage
- Cite all sources with dates
- Separate objective facts from analysis/implications
- **Attribution Required:** Every report must end with:
  - **Word documents:** Footer or final paragraph with hyperlink to https://bigdata.com
  - **Markdown/text:** `**Powered by Bigdata.com** - https://bigdata.com`

## Workflow Selection Guide

| User Need | Workflow | Example Queries |
|-----------|----------|-----------------|
| Recent developments and news summary | Company Brief | "What's happening with [company]?", "Recent news about [company]", "Update me on [company]", "Summarize [company] developments", "What has [company] been doing lately?" |
| Pre-earnings analysis and expectations | Earnings Preview | "Preview [company] earnings", "What to expect from [company] earnings?", "Setup for [company] earnings", "Earnings expectations for [company]", "Bull and bear case for [company] earnings" |
| Post-earnings results analysis | Earnings Digest | "Analyze [company] earnings", "Break down [company] results", "How did [company] perform?", "Summarize [company] quarterly results", "What were the earnings surprises for [company]?", "[Company] earnings reaction" |
| Comprehensive risk evaluation | Risk Assessment | "What are the risks for [company]?", "Risk factors for [company]", "Assess [company] vulnerabilities", "What could go wrong with [company]?", "Analyze [company] downside risks", "Financial health of [company]" |
| Investment research (general) | Company Brief → then follow up with specific workflows | "Research [company]", "Tell me about [company]", "Should I invest in [company]?" |
| Due diligence | All workflows in sequence | Start with Company Brief, then Risk Assessment, then Earnings Digest/Preview as appropriate |
| Quarterly monitoring | Earnings Digest + Company Brief | "Quarterly update on [company]" |
| Pre-investment screening | Risk Assessment + Company Brief | "Is [company] a good investment?", "Evaluate [company]" |

## Use Case Scenarios

### Scenario 1: New Investment Idea
**Situation:** User heard about a company and wants to learn more
**Recommended Flow:** 
1. Start with **Company Brief** (30-day overview)
2. Follow with **Risk Assessment** (understand vulnerabilities)
3. Check **Earnings Digest** (latest quarterly performance)

### Scenario 2: Earnings Season
**Situation:** Earnings are coming up or just released
**Before Earnings:** Use **Earnings Preview**
**After Earnings:** Use **Earnings Digest**

### Scenario 3: Portfolio Monitoring
**Situation:** User wants updates on existing holdings
**Recommended:** **Company Brief** for quick 30-day catch-up on each holding

### Scenario 4: Risk Review
**Situation:** Market volatility or company-specific concerns
**Recommended:** **Risk Assessment** to evaluate vulnerabilities and exposure

### Scenario 5: Sector Research
**Situation:** User is researching multiple companies in same sector
**Recommended:** Run **Company Brief** for each, compare findings

### Scenario 6: Comprehensive Due Diligence
**Situation:** Deep research before major investment decision
**Recommended Flow:**
1. **Company Brief** (current state)
2. **Risk Assessment** (downside analysis)
3. **Earnings Digest** (recent performance)
4. **Earnings Preview** (forward outlook if earnings upcoming)
