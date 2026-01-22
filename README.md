# Bigdata Financial Research Analyst Skill

An AI-powered skill that transforms your agentic platform into a Financial Research Analyst assistant. This skill automates research workflows and creates professional deliverables using [Bigdata.com](https://bigdata.com) MCP tools.

## What This Skill Does

Once installed, You Agent platform (e.g. Claude) can help you with:

**Research & Analysis**
- **Company Briefs** — 30-day development summaries with categorized news and investment implications
- **Earnings Previews** — Pre-earnings analysis with bull/bear cases and key metrics to watch
- **Earnings Digests** — Post-earnings breakdowns with surprises, guidance analysis, and analyst reactions
- **Risk Assessments** — Comprehensive risk profiles with likelihood/impact ratings from SEC filings and news

**Documents & Deliverables**
- **Investment Memos** — Structured buy/sell/hold recommendations with supporting analysis
- **Pitch Deck Content** — Key slides for investment committee presentations
- **Quick Updates** — Morning briefings or client-ready summaries

## Installation

### Option 1: Download from Releases (Recommended)

1. Go to the [Releases page](https://github.com/Bigdata-com/skills-financial-research-analyst/releases)
2. Download the latest `.skill` file from the release assets
3. Open [Claude](https://claude.ai) and navigate to **Settings → Capabilities**
4. Upload the `.skill` file to add the Financial Research Analyst capabilities

### Option 2: Build from Source

If you want to customize the skill to match your company standards and templates:

1. **Fork this repository** to your GitHub account
2. Clone your fork locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/skills-financial-research-analyst.git
   cd skills-financial-research-analyst
   ```
3. Customize the workflow templates in the `bigdata-financial-research-analyst/` folder
4. Build your custom `.skill` file:
   ```bash
   ./scripts/build-skill.sh <version>
   ```
   For example:
   ```bash
   ./scripts/build-skill.sh 1.0.0
   ```
5. Find your custom skill package at `scripts/output/bigdata-financial-research-analyst_<version>.skill`
6. Upload it to Claude at **Settings → Capabilities**

## Customization Ideas

When forking this repository, you might want to customize:

- **Report templates** — Adjust formatting to match your company's style guide
- **Analysis sections** — Add or remove sections based on your team's needs
- **Output formats** — Modify default outputs for your workflow (Markdown, Word, etc.)
- **Risk categories** — Tailor risk assessment frameworks to your investment criteria

## Requirements

This skill requires the [Bigdata.com MCP](https://bigdata.com) connection to be configured in your agentic platform for accessing financial data, news, filings, and analyst estimates.

For detailed setup instructions, see the integration guides for your platform:
- [Claude MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/claude-mcp-integration)
- [ChatGPT MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/chatgpt-mcp-integration)
- [Microsoft Copilot MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/microsoft-copilot-mcp-integration)

## License

See [LICENSE](LICENSE) for details.
