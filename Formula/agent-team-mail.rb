# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.20.0/atm_0.20.0_x86_64-apple-darwin.tar.gz"
      sha256 "eb176de0a1031e216e7ed4e4dd64556e3ed10af2d4ef13e14ce627d27badb4ba"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.20.0/atm_0.20.0_aarch64-apple-darwin.tar.gz"
      sha256 "b061716be632f594400ac0411f107f528ab5dbc7db8bccd49bcc51bd295ed142"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.20.0/atm_0.20.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "72cd2111d47dd23842c3db8e757973319ac4e8e7353cbb870d8666349551f1f1"

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
