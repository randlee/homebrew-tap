# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.36.0/atm_0.36.0_x86_64-apple-darwin.tar.gz"
      sha256 "ee1d5f927d707dda182d026d65d6f46f264318253cda108387630bd2d809883e"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.36.0/atm_0.36.0_aarch64-apple-darwin.tar.gz"
      sha256 "13b0a4046de34277c61a2f5e7358f8e00d6d88c78a3710ddefb935be8f5266af"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.36.0/atm_0.36.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "6f4674aeb1d7d87f4b7e1ef3d8c2ee7cbc7e5435f26ed6029fb0771fd6e596f1"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
          bin.install "atm-tui"
        end
      end
    end
  end

  def post_install
    system "sh", "-c", "pkill -x atm-daemon || true"
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
