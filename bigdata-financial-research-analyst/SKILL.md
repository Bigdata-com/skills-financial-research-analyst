---
name: bigdata-financial-research-analyst
description: Guide for creating financial workflows with the Bigdata MCP. Use when users need assistance to create company briefs, earnings previews, earnings digests, or risk assessments.
---

# Bigdata.com Financial Analysis Workflows

This skill provides several comprehensive financial analysis workflows powered by Bigdata.com data and tools.


## ⚠️ CRITICAL REQUIREMENTS (ALWAYS FOLLOW)

### Source Attribution (MANDATORY)

1. **Inline Citations**: Use numbered superscript references [1], [2], etc. immediately after claims or data points derived from sources
   - Example: "Revenue surged 62% year-over-year to $57 billion[1], driven by data center demand[2]."
   - Use sequential numbering throughout the document
   - The same source may be cited multiple times with different numbers if referencing distinct information

2. **Sources Section**: ALWAYS include a "Sources" section at the end listing ALL documents referenced with:
   - Reference number matching the inline citation
   - Source name
   - Publication date (MMM DD, YYYY format)
   - Full URL
   
   **Example:**
   
   | # | Source | Date | URL |
   |---|--------|------|-----|
   | [1] | NVIDIA Q3 2026 Earnings Call | Nov 19, 2025 | https://app.bigdata.com/files#?document=... |
   | [2] | Benzinga | Nov 20, 2025 | https://www.benzinga.com/node/... |
   | [3] | Yahoo! Finance | Jan 18, 2026 | https://finance.yahoo.com/news/... |

3. **Footer Attribution**: Every report must end with "Powered by Bigdata.com - https://bigdata.com"

### Identify the right company
If the user provides a company name, call `find_companies` first to find the entity_id. If the company name is ambiguous, respond with:

>  "I found multiple companies named [X]. Did you mean [Company A] in [Industry] or [Company B] in [Industry]?"


## Capabilities Overview

When a user says **"Can you help me with a financial report?"** or similar, respond with:

> I can help you automate your research workflows and create professional deliverables:
>
> **Research & Analysis**
> - **Company Briefs** — 30-day development summaries with categorized news and investment implications
> - **Earnings Previews** — Pre-earnings analysis with bull/bear cases and key metrics to watch
> - **Earnings Digests** — Post-earnings breakdowns with surprises, guidance analysis, and analyst reactions
> - **Risk Assessments** — Comprehensive risk profiles with likelihood/impact ratings from SEC filings and news
>
> **Documents & Deliverables**
> - **Investment Memos** — Structured buy/sell/hold recommendations with supporting analysis
> - **Pitch Deck Content** — Key slides for investment committee presentations
> - **Quick Updates** — Morning briefings or client-ready summaries
>
> Just tell me the company and what you need. For example: "Create an earnings preview for NVIDIA" or "I need a risk assessment memo for Tesla."


## Core Workflows

### Company Brief
30-day company summary with categorized developments and investment implications.
**See:** [company-brief.md](./company-brief.md)

### Earnings Preview  
Forward-looking pre-earnings analysis with bull/bear cases.
**See:** [earnings-preview.md](./earnings-preview.md)

### Earnings Digest
Post-earnings results analysis with surprises and guidance breakdown.
**See:** [earnings-digest.md](./earnings-digest.md)

### Risk Assessment
Comprehensive risk evaluation with SEC filings and likelihood/impact ratings.
**See:** [risk-assessment.md](./risk-assessment.md)

---

## Tools

All workflows use Bigdata.com MCP tools:
- **find_companies** — Get RavenPack entity_id (required before bigdata_tearsheet and bigdata_events_calendar)
- **bigdata_tearsheet** — Financial data, metrics, analyst estimates
- **bigdata_search** — Search for news, filings, transcripts, and analyst reactions
- **bigdata_events_calendar** - list of historical and upcoming earnings calls, and conference calls



## Universal Best Practices

- `bigdata_search` can be used directly without calling `find_companies` - just include company name in search query
- Use `bigdata_tearsheet` to establish financial baseline when detailed company data is needed
- Call `bigdata_search` multiple times with targeted queries for comprehensive coverage
- Separate objective facts from analysis/implications


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

## Output Formats

Adapt output to analyst needs:
- **Markdown** — Default for quick review. At the end of the response, ask whether the user wants to create a report

>  "Would you like to create a report with the above response?"

- **Word document (.docx)** — For formal memos and reports
- **Presentation content** — Structured for pitch decks