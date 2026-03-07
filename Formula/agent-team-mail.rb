# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.38.0/atm_0.38.0_x86_64-apple-darwin.tar.gz"
      sha256 "9c4cc97ad2051f36273aab94f3b08cba6ed6a68d00fef6b408b706460d10554c"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.38.0/atm_0.38.0_aarch64-apple-darwin.tar.gz"
      sha256 "104027995ec794fd2062b129ef189508c31ac39c84b23314674acbadbc8ffbda"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.38.0/atm_0.38.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "e423b414b7b47274dab88ea88e37620ce99c442cc4a227a6db5a6ec93a1bbb4d"

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
