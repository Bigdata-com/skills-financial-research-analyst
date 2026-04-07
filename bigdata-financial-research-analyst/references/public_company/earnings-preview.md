# Earnings Preview Workflow

Create a forward-looking earnings preview analyzing recent developments, industry trends, bull/bear cases, and key metrics to watch ahead of earnings releases.

## When to Use

- User asks: "Create an earnings preview for [company]"
- User asks: "Preview [company] earnings"
- User requests pre-earnings analysis
- User wants to know what to expect before earnings

**Optional depth:** Full reverse-DCF mechanics: [../equity-analysis/valuation/reverse-dcf.md](../equity-analysis/valuation/reverse-dcf.md). Full memo: [../../assets/templates/investment-memo.md](../../assets/templates/investment-memo.md).

## Workflow Steps

### Step 1: Identify the Company

Call `find_companies` with the company name to get the RavenPack entity_id.

### Step 2: Get Financial Baseline

Call `bigdata_company_tearsheet` with the entity_id to get:
- Recent quarterly performance trends
- Historical earnings surprises
- Analyst estimates for upcoming quarter
- Key financial metrics and margins
- Year-over-year comparisons

### Step 2b: Earnings quality quick screen (from tearsheet + quick search if needed)

Before building narratives, record a **short credibility table** (approximate if necessary; flag data gaps):

| Check | This period / trend | Red-flag threshold / note |
|-------|---------------------|-------------------------|
| OCF / Net income | | Healthy often >0.8 sustained; <0.6 or widening gap → dig |
| DSO vs revenue growth | | DSO rising faster than revenue → recognition risk |
| GAAP vs non-GAAP EPS gap | | Large or widening gap → quality question |

If tearsheet lacks a line, use `bigdata_search` for the latest quarter: "[Company] operating cash flow vs net income non-GAAP reconciliation".

Deeper framework: [../equity-analysis/financial-analysis/quality-of-earnings.md](../equity-analysis/financial-analysis/quality-of-earnings.md).

### Step 3: Identify the date of the next company's earnings call

Call `bigdata_events_calendar` with the entity_id to find out when the next earnings call is.

### Step 4: Search for Recent Developments

Use `bigdata_search` to find relevant information from the last 60-90 days:

**Recommended searches:**
- "[Company Name] recent developments last 90 days"
- "[Company Name] product launches initiatives"
- "[Company Name] guidance commentary management"
- "[Company Name] analyst expectations earnings preview"
- "[Industry] trends headwinds tailwinds"

Conduct **4–6 targeted searches** (not exhaustive lists). Then apply [analytical-frameworks.md](./analytical-frameworks.md): **which 2–3 themes actually matter** for this print and this stock.

### Step 5: What’s priced in + valuation cross-check

**Before** bull/bear narratives, answer what the **current price embeds** for this quarter and near-term trajectory. Use tearsheet multiples, consensus, and reverse-DCF-style reasoning (conceptual is fine—see [../equity-analysis/valuation/reverse-dcf.md](../equity-analysis/valuation/reverse-dcf.md)).

| Lens | Implied by market (price + multiples) | Consensus (estimates) | Your assessment |
|------|----------------------------------------|----------------------|-----------------|
| Growth (revenue / key volume) | | | |
| Margin level or expansion | | | |
| Beat magnitude / “whisper” vs published consensus | | | |

**Multiples sanity check (tearsheet):** Current **EV/EBITDA**, **P/E**, **FCF yield** (or sector-standard multiples) vs **~5-year range** or **peer median** when data allows. State whether valuation implies **optimism**, **consensus**, or **pessimism** relative to the setup.

### Step 6: Analyze and synthesize

Apply [analytical-frameworks.md](./analytical-frameworks.md): lead with **2–3 primary drivers**; do not give equal weight to every search hit.

**Recent Developments and Initiatives** (prioritize material items only)
- Product launches or major announcements
- Strategic partnerships or acquisitions
- Operational improvements or challenges
- Geographic expansion or market share changes

**Industry Trends and Sector Dynamics**
- Macro trends affecting the industry
- Competitive landscape changes
- Supply chain or cost pressures
- Regulatory or policy impacts

**Bull case (FaVeS-style discipline)**

Each bull point must be **specific, measurable, defensible with evidence**, and **resolvable** over a sensible horizon—not generic tailwinds.

- Tie to **consensus line items** where possible (e.g. “consensus models X% growth in segment Y; channel evidence suggests Z%, ~$Nm revenue upside”).  
- Cite **source** (tearsheet, filing, search) per claim.

**Bear case (same discipline)**

- Quantify **downside to metrics** where possible (margin bps, revenue %, one-time vs recurring).

**Key Metrics to Watch**
- Most important KPIs for this company **this quarter**
- Metrics that could move the stock **given what’s priced in**
- Where **surprise volatility** is highest vs whisper/consensus

## Output Format

Add inline citation with Superscript Numbers [1], [2] immediately after claims and add a hyperlink pointing to the document url.

Structure the report as:

```
# Earnings Preview: [Company Name]
Upcoming Earnings: [Date if known]
Reporting for: [Quarter and Fiscal Year]

## Executive Summary
[2-3 sentences: **lead with the 2-3 factors that matter most** for the setup and the print—not a generic overview]

## Earnings quality quick screen
| Check | Observation | Implication |
|-------|--------------|-------------|
| OCF / NI | | |
| DSO trend | | |
| GAAP vs non-GAAP | | |

## Financial Expectations

### Consensus Estimates
- Revenue: [Estimate] (YoY growth: X%)
- EPS: [Estimate] (YoY change: X%)
- Operating Margin: [Estimate]
- [Other key metrics]

### Recent Performance Context
[Brief summary of last quarter's results and trends]

## Recent Developments and Initiatives
[Bulleted list of key developments since last earnings]
- [Development 1 with date and implication]
- [Development 2 with date and implication]

## Industry Trends and Sector Dynamics
[Analysis of broader industry context]
- [Trend 1 and impact on company]
- [Trend 2 and impact on company]

## What’s priced in
| Lens | Implied by market | Consensus | Your view |
|------|-------------------|-----------|-----------|
| Growth | | | |
| Margins | | | |
| Beat / miss bar | | | |

## Valuation cross-check
[Current EV/EBITDA, P/E, FCF yield vs history/peers; cheap/fair/rich vs embedded expectations]

## Bull Case: Drivers for Upside Surprise
1. [Specific, measurable bull point tied to consensus lines / KPIs]
   - Evidence: [source]
   - Impact: [quantify if possible]

2. [Same structure]

## Bear Case: Risks to Consensus
1. [Specific bear point; sustainable vs one-time where relevant]
   - Evidence: [source]
   - Impact: [quantify if possible]

2. [Same structure]

## Key Metrics to Watch
1. **[Metric 1]:** Why it matters and what to look for
2. **[Metric 2]:** Why it matters and what to look for
3. **[Metric 3]:** Why it matters and what to look for

## Management Guidance Focus Areas
[What to listen for in guidance and Q&A]
- [Topic 1]
- [Topic 2]

## Investment Implications
[Balanced risk/reward **given what’s priced in**]

**Closing (structured):** Net assessment: [Positive/Negative/Neutral] because [specific]; key risk: [X]; next catalyst: [Y].

## Sources
  ALWAYS include a "Sources" section at the end listing ALL documents referenced with:
   - Reference number matching the inline Superscript Numbers
   - Source name and Publication date (MMM DD, YYYY format) with a hyperlink to the URL
  
   **Example:**
   [1] (NVIDIA Q3 2026 Earnings Call - Nov 19, 2025)[https://www.benzinga.com/node/...]
   [2] (Benzinga - Nov 20, 2025)[https://www.benzinga.com/node/...]
   [3] (Yahoo! Finance - Jan 18, 2026)[https://finance.yahoo.com/news/...]


---

**Powered by Bigdata.com** - https://bigdata.com

## Disclaimer

This output is for informational and research-assistance purposes only. It does **not** constitute investment, legal, tax, accounting, or other professional advice, and it is **not** a recommendation to buy, sell, or hold any security or instrument or to pursue any strategy. Information may be incomplete, estimated, delayed, or inaccurate. Past performance does not guarantee future results. Verify material facts independently and consult qualified advisors before making decisions.
```

## Best Practices

- Apply [analytical-frameworks.md](./analytical-frameworks.md) before final write: **2–3 drivers first**  
- Focus on **forward-looking** analysis, not just historical recap  
- Build **what’s priced in** before bull/bear so cases are **relative to embedded expectations**  
- Balance bull and bear with **FaVeS-style specificity** (numbers, sources, falsifiable claims)  
- Run the **earnings quality quick screen** from tearsheet early  
- Highlight metrics most likely to move the stock **conditional on the setup**  
- Cite analyst consensus where available from tearsheet  
- Search 60–90 days for context but **trim noise** in the written output  

## Key Differences from Other Workflows

- **vs. Company Brief:** Preview is forward-looking; Brief is retrospective summary
- **vs. Earnings Digest:** Preview is before earnings; Digest is after earnings analysis
- **vs. Risk Assessment:** Preview focuses on near-term earnings drivers; Risk Assessment is comprehensive risk analysis  
- **vs. Valuation snapshot:** Preview is print-focused; [valuation-snapshot.md](./valuation-snapshot.md) answers “what is it worth” without an earnings event

## Example Queries to User

If earnings date unknown:
- "I don't have the exact earnings date yet. Shall I proceed with the preview based on recent developments and expectations?"

If limited recent news:
- "There's been limited news recently. Would you like me to expand the search period or focus on industry trends?"
