# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.41.1/atm_0.41.1_x86_64-apple-darwin.tar.gz"
      sha256 "bd727e8291fa6c83af08a5d7b28bf2ae6a214f0d608d1723ddd40995782aeb24"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.41.1/atm_0.41.1_aarch64-apple-darwin.tar.gz"
      sha256 "14bf39929433faea3dc5e1d6c752b920e1bf6af32224e33b2e4ed153138d0216"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.41.1/atm_0.41.1_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "ca7f9615ff333c01934ddccf67112e1883a24d3fbd9af8b67ea5a439c775c059"

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
