# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.43.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.43.4/atm_0.43.4_x86_64-apple-darwin.tar.gz"
      sha256 "30bdb15ed4090d2276629d8c89ce652ed4dd4ef756a6708d3838a70b9f7ec39e"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.43.4/atm_0.43.4_aarch64-apple-darwin.tar.gz"
      sha256 "75d86af7acc24e75bcd18459369b9cf3ce6f69753d176f4f9beee0b74ccc2547"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.43.4/atm_0.43.4_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "bec3314711a21a976a9a908f0e7edfd1efc821a4ff7cee3b527e3434aba72863"

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
