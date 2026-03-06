# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.37.0/atm_0.37.0_x86_64-apple-darwin.tar.gz"
      sha256 "455f83b31c172f0fbb33d2c597fc1876f494e757b5b0ef06dc2ef1462ea74fc1"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.37.0/atm_0.37.0_aarch64-apple-darwin.tar.gz"
      sha256 "0a25794c4da384685da6ef84acdcb2b32ec70de0b1271d50320ec2c41c061d40"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.37.0/atm_0.37.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "0dd570b4cbc74f8269c1a258cd2320726b4f41010bf3c3c31f6b149f2779f224"

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
