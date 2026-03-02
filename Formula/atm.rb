# typed: false
# frozen_string_literal: true

# Alias formula — installs the same binaries as agent-team-mail.
# Prefer: brew install randlee/tap/agent-team-mail

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.28.0/atm_0.28.0_x86_64-apple-darwin.tar.gz"
      sha256 "5d007536ab2bda567339f9ab15eb5d6793ec475fd3f16a531f442e6d3995ca48"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.28.0/atm_0.28.0_aarch64-apple-darwin.tar.gz"
      sha256 "44d343c808ebb73eeec8a7124f5ae481d5c4bf85b5e22c89e2858b391b4e55b6"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.28.0/atm_0.28.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "d60eae47cdeccdb57a5bbc979cfa2cfdcc8415d10ddc87e6ba262fd699c7d912"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
          bin.install "atm-tui"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
