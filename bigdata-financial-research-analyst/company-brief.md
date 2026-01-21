# Company Brief Workflow

Generate a comprehensive 30-day summary of recent developments for a specified company.

## When to Use

- User asks: "Create a brief for [company]"
- User asks: "What's happening with [company]"
- User requests company summary or recent developments
- User wants to know about recent news over the past month

## Workflow Steps

### Step 1: Identify the Company

Call `find_companies` with the company name to get the RavenPack entity_id.

**Example:**
```
find_companies(query="Apple")
→ entity_id: "4A6F00"
```

### Step 2: Gather Business Context

Call `bigdata_tearsheet` with the entity_id to get:
- Company profile (sector, industry, description)
- Financial position
- Recent performance metrics

This context helps interpret the significance of news events.

### Step 3: Search Recent News

Use `bigdata_search` to find news from the last 30 days. Use natural language queries that include the company name and temporal reference.

**Example search queries:**
- "[Company Name] news last 30 days"
- "[Company Name] recent developments"
- "[Company Name] earnings announcement"
- "[Company Name] product launches partnerships"
- "[Company Name] regulatory legal updates"

Conduct multiple searches (3-5) to cover different aspects:
- Financial developments
- Product/technology announcements
- Partnerships and M&A
- Regulatory and legal matters
- Management changes

### Step 4: Categorize Findings

Organize all findings into these categories:

**Financial Results**
- Earnings reports, revenue updates, profit/loss statements
- For each: Date, key metrics, performance vs. expectations

**Product/Tech Launches**
- New products, features, or technology announcements
- For each: Date, product details, market implications

**M&A and Partnerships**
- Acquisitions, mergers, strategic partnerships, investments
- For each: Date, parties involved, deal terms (if disclosed), strategic rationale

**Regulatory/Legal Updates**
- Legal proceedings, regulatory filings, compliance issues
- For each: Date, nature of issue, potential impact

**Management Changes**
- Executive appointments, departures, board changes
- For each: Date, personnel details, role significance

**Other Material Events**
- Any significant events not covered above
- For each: Date, event description, relevance

### Step 5: Investment Implications

For each categorized event, provide:
- **Date:** When the event occurred or was announced
- **Facts:** Objective summary of what happened
- **Investment Implication:** Assess as:
  - **Bullish:** Positive for company/stock value
  - **Bearish:** Negative for company/stock value
  - **Neutral:** Mixed or unclear impact

## Output Format

Structure the report as:

```
# Company Brief: [Company Name]
Period: [Date Range - Last 30 Days]

## Executive Summary
[2-3 sentence overview of major developments]

## Financial Results
[Categorized findings with dates, facts, implications]

## Product/Tech Launches
[Categorized findings with dates, facts, implications]

## M&A and Partnerships
[Categorized findings with dates, facts, implications]

## Regulatory/Legal Updates
[Categorized findings with dates, facts, implications]

## Management Changes
[Categorized findings with dates, facts, implications]

## Other Material Events
[Categorized findings with dates, facts, implications]

## Overall Assessment
[Brief synthesis of investment outlook]

---

**Powered by Bigdata.com** - https://bigdata.com
```

## Best Practices

- Call `bigdata_search` multiple times (3-5 searches) with different queries to ensure comprehensive coverage
- Always cite sources with dates
- Be objective in categorization - separate facts from implications
- If no events found in a category, note "No significant developments in this period"
- Prioritize material events over minor announcements
- **Attribution Required:** Always include "**Powered by Bigdata.com** - https://bigdata.com" at the bottom
  - In Word documents: Add as footer or final paragraph with hyperlink
  - In Markdown/text: Use format shown above

## Example Queries to User

If company name is ambiguous:
- "I found multiple companies named [X]. Did you mean [Company A] in [Industry] or [Company B] in [Industry]?"

If no significant developments:
- "I haven't found any significant developments for [Company] in the last 30 days. Would you like me to extend the search period or focus on specific topics?"
