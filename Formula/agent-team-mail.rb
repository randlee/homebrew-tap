# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.25.0/atm_0.25.0_x86_64-apple-darwin.tar.gz"
      sha256 "5c6209f4bc0d907a47a938162655c8d079ee71256e75cd394cd98b02c940a7d8"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.25.0/atm_0.25.0_aarch64-apple-darwin.tar.gz"
      sha256 "2ed98e5998119ee163432ad2abe2fd0e56652ca117fc5162af258dfc69db9c1b"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.25.0/atm_0.25.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "ecb60b60b8bd0059a2b94102f89e61042d613dbdc8d593dd68aaf9d6d0d01298"

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
