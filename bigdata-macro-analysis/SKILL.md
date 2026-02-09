---
name: bigdata-macro-analysis
description: Comprehensive macro analysis at sector and country level using Bigdata.com MCP tools. Use when users ask for sector overviews, sector comparisons, country economic profiles, regional analysis, G7/G20 comparisons, economic calendar analysis, thematic macro research (AI, energy transition, inflation, deglobalization), sector rotation signals, or cross-asset implications. Triggers include questions about sector performance/valuations/outlook, country GDP/inflation/rates/policy, economic data releases, central bank decisions, regional allocations, or macro investment themes. Also use for morning market briefings, weekly macro outlooks, or any request combining sector and economic analysis.
---

# Macro Sector & Country Analysis

Comprehensive macro analysis workflows using Bigdata.com MCP tools.

## Tools Reference

| Tool | Purpose | Required First |
|------|---------|----------------|
| `find_companies` | Get entity_id for companies | Yes - before tearsheet/calendar |
| `bigdata_company_tearsheet` | Company financials, metrics, estimates | entity_id from find_companies |
| `bigdata_search` | News, filings, transcripts, analysis, **economic data** | No - use directly |
| `bigdata_events_calendar` | Earnings and conference schedules | entity_id for company-specific |

**NOTE:** There is NO country tearsheet tool. For country/economic analysis, use `bigdata_search` with targeted queries.

## Country & Economic Analysis Approach

Since there is no dedicated country tearsheet tool, gather economic data through targeted searches:

### Economic Data Searches
```
bigdata_search("[Country] GDP growth economic outlook")
bigdata_search("[Country] inflation CPI consumer prices")
bigdata_search("[Country] central bank interest rates monetary policy")
bigdata_search("[Country] unemployment labor market jobs")
bigdata_search("[Country] fiscal policy government budget deficit")
```

### Regional Comparison Searches
```
bigdata_search("G7 economic comparison GDP growth rates")
bigdata_search("US Europe Asia economic outlook comparison")
bigdata_search("developed markets emerging markets allocation")
```

### Economic Calendar Searches
```
bigdata_search("[Country] economic calendar upcoming data releases")
bigdata_search("[Country] central bank meeting rate decision")
bigdata_search("Fed ECB BOJ rate decision outlook")
```

## Workflow Selection

| User Request | Workflow |
|--------------|----------|
| "Analyze [sector] sector" | [sector-analysis.md](references/sector-analysis.md) |
| "Economic outlook for [country]" | [country-analysis.md](references/country-analysis.md) |
| **"Macro analysis of [sector] in [country]"** | **[country-sector-analysis.md](references/country-sector-analysis.md)** |
| "Compare sectors" / "Sector rotation" | [cross-sector.md](references/cross-sector.md) |
| "[Theme] investment implications" | [thematic-research.md](references/thematic-research.md) |
| "Compare US vs Europe vs Asia" | [regional-comparison.md](references/regional-comparison.md) |

### Country-Sector Analysis Triggers
Use `country-sector-analysis.md` when request combines **BOTH** a sector AND a country/region:
- "Macro analysis of Technology investment in the USA" ✅
- "European financials outlook" ✅
- "India consumer sector analysis" ✅
- "China EV sector" ✅
- "Japanese semiconductor industry" ✅
- "US healthcare macro view" ✅

## Critical Requirements

### Source Attribution (MANDATORY)
1. **Inline citations**: Use [1], [2], etc. after claims from sources
2. **Sources table**: End every report with numbered source list (Source, Date, URL)
3. **Footer**: End with "Powered by Bigdata.com - https://bigdata.com"

### Company Identification
Call `find_companies` first when analyzing specific companies. If ambiguous:
> "I found multiple companies named [X]. Did you mean [Company A] in [Industry] or [Company B]?"

### Search Best Practices
- Use 5-10 targeted searches per workflow for comprehensive coverage
- Include temporal context: "last 30 days", "2026 outlook"
- Combine company name with topic in queries
- For economic data, search for specific indicators (GDP, CPI, rates) separately

## Output Formats

Default: Markdown for quick review. After analysis, ask:
> "Would you like me to create a Word document or presentation with this analysis?"

## Capabilities Overview

When user asks "Can you help with macro analysis?" respond:

> I can help with comprehensive macro analysis:
>
> **Sector Analysis** — Performance, valuations, themes, sub-industries, catalysts
> **Country Profiles** — GDP, inflation, policy, market implications (via search)
> **Country-Sector Analysis** — Macro view of a specific sector within a country (e.g., "US Technology", "India Financials")
> **Sector Comparisons** — Relative value, rotation signals, cycle positioning
> **Thematic Research** — AI, energy transition, deglobalization, rates
> **Regional Allocation** — G7/G20 comparisons, currency, cross-asset views
>
> Example: "Analyze US technology sector" or "Macro analysis of financials in India" or "Compare G7 economic outlooks"
