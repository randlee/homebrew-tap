# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.33.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.33.2/atm_0.33.2_x86_64-apple-darwin.tar.gz"
      sha256 "ab922b86aa1131368159e2151221d207dc22f737abe1975e4758987ec8ae6c32"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.33.2/atm_0.33.2_aarch64-apple-darwin.tar.gz"
      sha256 "ab11b95541b31dac1c40e22e7c271ab5a73d6ae82f998660eaf7821ca01ba7cc"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.33.2/atm_0.33.2_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "01bc63eebb02a687fa1957cc7bfe877aa92405a5c179b788643c943b65c74698"

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
