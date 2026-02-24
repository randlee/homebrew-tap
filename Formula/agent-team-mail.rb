# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.18.0/atm_0.18.0_x86_64-apple-darwin.tar.gz"
      sha256 "16c5b8e5adcd70ca99db4073f5a97cbfe0ddb643afd2a41c0bdaf0572e97a211"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.18.0/atm_0.18.0_aarch64-apple-darwin.tar.gz"
      sha256 "d5cd19b54d5aa2025027165a8e7ff04563b7aed6c18273edfa9ecf3286ea853c"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.18.0/atm_0.18.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "e9882efd36bac30ea6a83a426b133876a54b0d23e5c3d3f211dd5332c6cd6e6b"

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
