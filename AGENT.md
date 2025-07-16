# Microsoft 365 Documentation Repository

## Build/Test Commands
- Build: `powershell .\.openpublishing.build.ps1`
- No automated tests - content validation via OpenPublishing platform
- Validate links and content structure via DocFX locally (install DocFX and run `docfx serve` in subdirectories)

## Architecture & Structure
- **microsoft-365/**: Main Microsoft 365 documentation (admin, business, enterprise, security, etc.)
- **copilot/**: Microsoft 365 Copilot documentation
- **defender/**: Microsoft Defender Threat Intelligence documentation
- **security-insights/**: Security insights documentation
- Uses Microsoft OpenPublishing platform with DocFX for documentation generation
- Content organized by product area with separate docfx.json configs for each docset

## Content Guidelines
- **Format**: Markdown (.md) files with YAML frontmatter containing metadata
- **Metadata required**: title, author, ms.author, manager, ms.date, audience, ms.topic, ms.service
- **Links**: Use relative paths for internal content, absolute for external
- **Images**: Store in /media/ subdirectories, reference with relative paths
- **Style**: Follow Microsoft Learn style guide for technical documentation
- **File naming**: Use lowercase with hyphens (kebab-case)
- **Redirects**: Managed via .openpublishing.redirection.*.json files for each service area
