# Contributing

## Creating a Release

This repository uses GitHub Actions to create releases when a tag is pushed. The workflow builds all skills and attaches each `.skill` package to the release.

### Tag Format

Tags must follow: `v<major>.<minor>.<patch>`

| Tag       | Valid? |
|----------|--------|
| `v0.0.1` | ✅     |
| `v1.2.3` | ✅     |
| `v2.0.0-beta` | ✅ |
| `0.0.1`  | ❌ (missing `v` prefix) |
| `version1` | ❌ (wrong format) |

### Example

```bash
git tag v0.0.3
git push origin v0.0.3
```

This triggers the CI/CD pipeline, which:

1. Runs `./scripts/build-skill.sh <tag>` to build all skills
2. Creates a GitHub Release with **both** assets attached:
   - `bigdata-financial-research-analyst_<tag>.skill`
   - `bigdata-macro-analysis_<tag>.skill`

## Adding a New Skill

To add another skill to this repository and have it built and released with the others:

1. **Create a skill folder** at the repo root with the same name as the package (e.g. `bigdata-my-new-skill/`). The folder must contain at least a `SKILL.md` with frontmatter:
   ```yaml
   ---
   name: bigdata-my-new-skill
   description: Short description for when to use this skill.
   ---
   ```

2. **Register it in the build script**  
   Edit `scripts/build-skill.sh` and add the folder name to the `SKILLS` array:
   ```bash
   SKILLS=(
     bigdata-financial-research-analyst
     bigdata-macro-analysis
     bigdata-my-new-skill
   )
   ```

3. **Attach it in CI/CD**  
   Edit `.github/workflows/cicd.yaml` and add the new asset to the `gh release create` command:
   ```yaml
   run: |
     gh release create ... \
       scripts/output/bigdata-financial-research-analyst_${{ github.ref_name }}.skill \
       scripts/output/bigdata-macro-analysis_${{ github.ref_name }}.skill \
       scripts/output/bigdata-my-new-skill_${{ github.ref_name }}.skill
   ```

4. **Update docs**  
   - In `README.md`, add a short section for the new skill under **Skills** and mention its package name under **Installation** and **Build from Source**.
   - In this file, add the new package to the list of release assets in **Creating a Release** and to the **Adding a New Skill** example if helpful.

After that, the next tag push will build and release the new skill together with the existing ones.
