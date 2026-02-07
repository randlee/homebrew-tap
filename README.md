# Synaptic Canvas Homebrew Tap

Homebrew formulas for [Synaptic Canvas](https://github.com/randlee/synaptic-canvas) packages.

## About Synaptic Canvas

Synaptic Canvas is a marketplace for Claude-powered tools and packages. Discover, install, and manage intelligent development tools built with Claude AI.

## Available Packages

### claude-history

CLI tool for programmatic access to Claude Code's agent history storage.

**Features:**
- Query conversation history with filters
- List projects and sessions
- Display agent hierarchy trees
- Find agents by task description
- Export sessions to HTML or JSONL

**Installation:**
```bash
brew tap randlee/tap
brew install claude-history
```

**Usage:**
```bash
# List all sessions for a project
claude-history list /path/to/project

# Show agent hierarchy
claude-history tree /path/to/project --session abc123

# Export session to HTML
claude-history export /path/to/project --session abc123 --open
```

**Links:**
- [GitHub Repository](https://github.com/randlee/claude-history)
- [Documentation](https://github.com/randlee/claude-history#readme)
- [Synaptic Canvas Marketplace](https://github.com/randlee/synaptic-canvas)

## Installation

Add this tap to your Homebrew:

```bash
brew tap randlee/tap
```

Then install any package:

```bash
brew install <package-name>
```

## Updating Packages

Update formulas:

```bash
brew update
```

Upgrade installed packages:

```bash
brew upgrade <package-name>
```

## Contributing

This tap is automatically updated by [GoReleaser](https://goreleaser.com/) when new versions are released. 

To request a new package or report issues:
- Visit the [Synaptic Canvas repository](https://github.com/randlee/synaptic-canvas)
- Open an issue in the specific package repository

## License

Individual packages have their own licenses. See each package's repository for details.

---

**Maintained by**: [randlee](https://github.com/randlee)  
**Part of**: [Synaptic Canvas](https://github.com/randlee/synaptic-canvas)
