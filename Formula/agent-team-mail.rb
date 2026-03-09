# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.42.1/atm_0.42.1_x86_64-apple-darwin.tar.gz"
      sha256 "897695c3d778e266920a2109241d1fe92392089bea2a1455682c9e0f263df90d"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.42.1/atm_0.42.1_aarch64-apple-darwin.tar.gz"
      sha256 "3b4aac25980e41b966766c01a6a883dfed2e2b3187a5e92ef9e77aa009fd6802"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.42.1/atm_0.42.1_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "397d76f8dd0604a308c026022a645533f71103488297038b8c5b1d07e5c4ea55"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
          bin.install "atm-tui"
          bin.install "sc-compose"
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
