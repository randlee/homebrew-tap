# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.22.0/atm_0.22.0_x86_64-apple-darwin.tar.gz"
      sha256 "2a29a8607ad18f8a657997e2f9ce063f25797a82a4522912a5f9d40283ffba2c"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.22.0/atm_0.22.0_aarch64-apple-darwin.tar.gz"
      sha256 "38abff9b131956e7a66c5cabe35d75a61e7ca8f10c2ce99319a5c07fc5c7a910"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.22.0/atm_0.22.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "30278b6585d3c1556ce0de5acea5d8e6ef68c7feda98e98ba4cb4950ed9dbc87"

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
