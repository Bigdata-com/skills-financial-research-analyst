# ⚠️ This repository is obsolete — it has moved

Development of the **Bigdata Financial Research Analyst** skills no longer happens here.

They now live — and are actively maintained — as the official Bigdata.com plugin in the
**[bigdata-plugins-marketplace](https://github.com/Bigdata-com/bigdata-plugins-marketplace)** repository.

**👉 Follow [Bigdata-com/bigdata-plugins-marketplace](https://github.com/Bigdata-com/bigdata-plugins-marketplace) instead.**

This repository is kept read-only for reference. It will not receive updates, fixes, or new skills.

---

## Where to go now

### Recommended: install the official plugin

The plugin bundles the full set of financial research skills and keeps them up to date automatically.
It is officially supported in **Claude** and **ChatGPT** — click your platform below to open the plugin
details page, then click `Install`:

| Platform | Quick install |
| --- | --- |
| **Claude** | [Official Bigdata plugin →](https://claude.ai/directory/plugins/bigdata-com%40knowledge-work-plugins) |
| **ChatGPT** | [Official Bigdata plugin →](https://chatgpt.com/plugins/plugin_asdk_app_69491eceef3c8191beb70788b7840429) |

Other platforms can add the plugin from source using the public repository:

```
https://github.com/Bigdata-com/bigdata-plugins-marketplace
```

📖 **[Full installation guide →](https://docs.bigdata.com/skills-reference/install-bigdata-plugin)**

### Alternative: install a single Skill

If you only want one specific skill, you can generate a `.skill` (or `.zip`) file for it using the
build script in the new repository:

🔧 **[`plugins/bigdata-com/scripts/build-skill.sh`](https://github.com/Bigdata-com/bigdata-plugins-marketplace/blob/main/plugins/bigdata-com/scripts/build-skill.sh)**

```bash
./build-skill.sh bigdata-earnings-preview
```

Then upload the generated file to your agentic platform (in Claude: **Settings → Capabilities**).

---

## Requirements

The skills require a [Bigdata.com](https://bigdata.com) MCP connection in your agentic platform to
access financial data, news, filings, and analyst estimates. Integration guides:

- [Claude MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/claude-mcp-integration)
- [ChatGPT MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/chatgpt-mcp-integration)
- [Microsoft Copilot MCP Integration](https://docs.bigdata.com/mcp-reference/oauth-integrations/microsoft-copilot-mcp-integration)

## License

See [LICENSE](LICENSE) for details.
