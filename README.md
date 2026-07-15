# randlee Homebrew Tap

Homebrew formulas for selected `randlee` CLI tools.

## Available Packages

### atm

CLI and daemon for mail-like messaging with Claude agent teams.

**Features:**
- Send, read, ack, clear, doctor, and log workflows
- Shared daemon-backed mailbox runtime
- Team/member administration
- Installed user documentation bundle
- Cross-platform: macOS, Linux, and Windows

**Installation:**
```bash
brew tap randlee/tap
brew install atm
```

**Usage:**
```bash
# Show version
atm --version

# Run diagnostics
atm doctor --json

# Show team roster
atm members --team <team>

# Send a message
atm send <recipient> "hello"
```

**Links:**
- [GitHub Repository](https://github.com/randlee/atm-core)
- [Releases](https://github.com/randlee/atm-core/releases)
- [crates.io](https://crates.io/crates/atm)

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

This tap may be updated automatically when new versions are released, but formula
changes should still be checked against the actual published archive layout.

To request a new package or report issues:
- Visit the relevant package repository
- Open an issue in the specific package repository

## License

Individual packages have their own licenses. See each package's repository for details.

---

**Maintained by**: [randlee](https://github.com/randlee)  
