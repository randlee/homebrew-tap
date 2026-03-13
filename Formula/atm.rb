# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.44.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.44.9/atm_0.44.9_x86_64-apple-darwin.tar.gz"
      sha256 "43f4ffd0ea1ae26d3d2d16d8e77c350994838745606f9735a2a3110b16342221"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.44.9/atm_0.44.9_aarch64-apple-darwin.tar.gz"
      sha256 "2e5865c5286745ce645845dc2d6b6df62c424d505de70a8f0ade4baa4df3e8c6"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.44.9/atm_0.44.9_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "e6f34102fe1e7911f58401d88ea161c8a937cd09a8d2daa641bbed0ba61b1129"

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
