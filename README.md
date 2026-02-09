# Bigdata Skills for Financial Research

AI-powered skills that extend your agentic platform with financial research and macro analysis using [Bigdata.com](https://bigdata.com) MCP tools. This repository includes two installable skills.

## Skills

### 1. Bigdata Financial Research Analyst

Transforms your agent into a **Financial Research Analyst** assistant. Use it for company-level research and professional deliverables.

**Research & Analysis**
- **Company Briefs** — 30-day development summaries with categorized news and investment implications
- **Earnings Previews** — Pre-earnings analysis with bull/bear cases and key metrics to watch
- **Earnings Digests** — Post-earnings breakdowns with surprises, guidance analysis, and analyst reactions
- **Risk Assessments** — Comprehensive risk profiles with likelihood/impact ratings from SEC filings and news

**Documents & Deliverables**
- **Investment Memos** — Structured buy/sell/hold recommendations with supporting analysis
- **Pitch Deck Content** — Key slides for investment committee presentations
- **Quick Updates** — Morning briefings or client-ready summaries

**Package:** `bigdata-financial-research-analyst_<version>.skill`

### 2. Bigdata Macro Analysis

Adds **macro, sector, and country-level analysis** using the same Bigdata.com tools. Use it for top-down and thematic research.

**Capabilities**
- **Sector Analysis** — Performance, valuations, themes, sub-industries, catalysts
- **Country Profiles** — GDP, inflation, policy, market implications (via search)
- **Country–Sector Analysis** — Macro view of a sector in a country (e.g., US Technology, India Financials)
- **Sector Comparisons** — Relative value, rotation signals, cycle positioning
- **Thematic Research** — AI, energy transition, deglobalization, rates
- **Regional Allocation** — G7/G20 comparisons, currency, cross-asset views

**Package:** `bigdata-macro-analysis_<version>.skill`

You can install one or both skills depending on your needs.

## Installation

### Option 1: Download from Releases (Recommended)

1. Go to the [Releases page](https://github.com/Bigdata-com/skills-financial-research-analyst/releases)
2. Download the `.skill` file(s) you need:
   - **Financial Research Analyst:** `bigdata-financial-research-analyst_<version>.skill`
   - **Macro Analysis:** `bigdata-macro-analysis_<version>.skill`
3. Open [Claude](https://claude.ai) and go to **Settings → Capabilities**
4. Upload each `.skill` file to add that skill’s capabilities

### Option 2: Build from Source

To customize workflows or templates:

1. **Fork** this repository and clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/skills-financial-research-analyst.git
   cd skills-financial-research-analyst
   ```
2. Edit the skill folders (`bigdata-financial-research-analyst/`, `bigdata-macro-analysis/`) as needed
3. Build all skills:
   ```bash
   ./scripts/build-skill.sh <version>
   ```
   Example: `./scripts/build-skill.sh 1.0.0`
4. Find the packages in `scripts/output/`:
   - `bigdata-financial-research-analyst_<version>.skill`
   - `bigdata-macro-analysis_<version>.skill`
5. Upload the desired `.skill` file(s) to Claude at **Settings → Capabilities**

For adding a new skill to this repo, see [CONTRIBUTING.md](CONTRIBUTING.md#adding-a-new-skill).

## Requirements

Both skills require the [Bigdata.com MCP](https://bigdata.com) connection in your agentic platform for financial data, news, filings, and economic data.

- [Claude MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/claude-mcp-integration)
- [ChatGPT MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/chatgpt-mcp-integration)
- [Microsoft Copilot MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/microsoft-copilot-mcp-integration)

## License

See [LICENSE](LICENSE) for details.
