# WhaleLeap Codex Skills

Private, versioned source for WhaleLeap Studio's custom Codex Skills.

## What belongs here

- Custom Skills maintained by WhaleLeap Studio
- Skill-owned references, examples, checklists, scripts, and agent metadata
- Portable install and audit tooling

Do not add Codex system Skills, plugin caches, credentials, Shopify sessions, API keys, or machine-specific configuration.

## Install on another computer

Clone this repository, then run:

```bash
./install.sh
```

The default destination is `$HOME/.agents/skills`. The installer creates one symlink per Skill and refuses to overwrite an existing file, directory, or unrelated symlink.

For a Codex installation that discovers user Skills from `$HOME/.codex/skills`, use:

```bash
./install.sh --target "$HOME/.codex/skills"
```

Preview changes without writing:

```bash
./install.sh --dry-run
```

Restart Codex after the first install if the Skills are not detected immediately.

## Update

```bash
git pull --ff-only
./audit.sh
```

Because the installed entries are symlinks, repository updates are available without copying the Skill folders again.

## Connect a private remote

Create an empty private repository without a generated README, then run:

```bash
git config user.name "<your-name>"
git config user.email "<your-email>"
git add .
git commit -m "chore: initialize WhaleLeap Codex Skills"
git remote add origin git@github.com:<account>/whaleleap-codex-skills.git
git push -u origin main
```

Use SSH or another credential method configured on that computer. Never commit access tokens or private keys.

## Validate

```bash
./audit.sh
```

The audit verifies basic Skill structure, frontmatter names, duplicate names, and common portability problems. It does not replace runtime or domain-specific testing.

## Machine-local setup

Install and authenticate these separately when required:

- Codex desktop app or Codex CLI
- Git and SSH access to the private remote
- Node.js and Python
- Shopify CLI and Shopify authentication
- MCP servers, API keys, and other secrets

Set `CODEX_SKILLS_DIR` when scripts need to locate a sibling Skill and the installation target is not `$HOME/.agents/skills`:

```bash
export CODEX_SKILLS_DIR="$HOME/.codex/skills"
```

## Maintenance workflow

1. Edit the repository copy.
2. Run `./audit.sh`.
3. Review `git diff`.
4. Commit with a focused message.
5. Pull the commit on other computers.
