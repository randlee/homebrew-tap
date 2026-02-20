# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.9.0/atm_0.9.0_x86_64-apple-darwin.tar.gz"
      sha256 "4b6af4f1c40b5d3e9a74d9abcc528a332946ddac364d2447ee9d8ccd6d87fca0"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.9.0/atm_0.9.0_aarch64-apple-darwin.tar.gz"
      sha256 "985cfc68940fbdee9430706da40bb52bf6e5b6a150bb01faade176cbbe32b79f"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.9.0/atm_0.9.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "5b5da376c40a7ff6a1848818316bbd80e20771a7efdd1f4e3d8ac0b28e005fa1"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
