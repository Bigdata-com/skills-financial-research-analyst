# Country Economic Analysis Workflow

## When to Use
- "Economic outlook for [country]"
- "Analyze [country] economy"
- Country comparison or regional analysis
- Economic calendar or data releases

## Workflow Steps

### Step 1: Search Core Economic Indicators
Use `bigdata_search` with targeted queries for each key indicator:

```
bigdata_search("[Country] GDP growth economic outlook 2026")
bigdata_search("[Country] inflation CPI consumer prices trends")
bigdata_search("[Country] central bank interest rates monetary policy")
bigdata_search("[Country] unemployment rate labor market")
bigdata_search("[Country] fiscal policy government budget")
```

### Step 2: Search Monetary Policy
Use `bigdata_search`:
- "[Country] central bank rate decision outlook"
- "[Country] monetary policy inflation target"
- "Fed/ECB/BOJ/PBOC policy rate path expectations"

### Step 3: Search Economic Calendar & Events
Use `bigdata_search`:
- "[Country] economic data releases calendar"
- "[Country] central bank meeting schedule"
- "[Country] GDP CPI employment report dates"

### Step 4: Search Market Implications
Use `bigdata_search`:
- "[Country] equity market outlook"
- "[Country] bond market yields spreads"
- "[Country] currency forex outlook"
- "[Country] foreign investment flows"

### Step 5: Search Regional Context (if applicable)
Use `bigdata_search`:
- "G7 economic comparison GDP inflation rates"
- "[Country] vs peers economic performance"
- "developed markets emerging markets outlook"

## Output Template

```markdown
# Country Economic Analysis: [Country]
Report Date: [Date]

## Executive Summary
[3-4 sentence overview]

## Economic Snapshot

### Key Indicators
| Indicator | Current | Previous | Trend | Context |
|-----------|---------|----------|-------|---------|
| GDP Growth (YoY) | X.X% | X.X% | ↑/↓/→ | [vs peers] |
| Inflation (CPI YoY) | X.X% | X.X% | ↑/↓/→ | [vs target] |
| Unemployment | X.X% | X.X% | ↑/↓/→ | [context] |
| Policy Rate | X.X% | X.X% | [last action] | [outlook] |

### Economic Health Assessment
| Dimension | Rating | Commentary |
|-----------|--------|------------|
| Growth Momentum | Strong/Moderate/Weak | [Brief] |
| Inflation | Contained/Elevated/Concerning | [Brief] |
| Labor Market | Tight/Balanced/Slack | [Brief] |
| Fiscal Position | Solid/Manageable/Stretched | [Brief] |

## Monetary Policy Outlook

### Current Stance
- **Rate**: X.X%
- **Last Action**: [Hike/Cut/Hold] on [Date]
- **Guidance**: [Summary]

### Rate Path Expectations
| Timeframe | Expected | Commentary |
|-----------|----------|------------|
| Next meeting | | |
| Year-end | | |

## Key Economic Events to Watch
| Date | Event | Why It Matters |
|------|-------|----------------|

## Market Implications

### Equity
- **YTD**: +/-X.X%
- **Valuation**: Premium/Fair/Discount
- **Opportunities**: [Sectors]

### Fixed Income
- **10Y Yield**: X.X%
- **Curve**: Steep/Flat/Inverted
- **View**: Extend/Neutral/Shorten

### Currency
- **vs USD**: [Level]
- **YTD**: +/-X.X%
- **Outlook**: Bullish/Neutral/Bearish

## Investment Thesis
**Bull Case**: [Points]
**Bear Case**: [Points]
**Positioning**: [Recommendation]

## Key Risks
1. [Risk]: [Description and triggers]

## Sources
| # | Source | Date | URL |
|---|--------|------|-----|

---
**Powered by Bigdata.com** - https://bigdata.com
```
