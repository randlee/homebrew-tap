# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.34.0/atm_0.34.0_x86_64-apple-darwin.tar.gz"
      sha256 "910250bb6812d85630445ddb26c8429a9b2f98f082f22b3dd3bc16a132207344"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.34.0/atm_0.34.0_aarch64-apple-darwin.tar.gz"
      sha256 "8b8ed38ef6e879dda059e83c49603c213c54be879e63128e93d8833b14d36990"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.34.0/atm_0.34.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "414630c76843ec045afb0ef00b5d33537aa3314b432b298ac5176f4d05ffca50"

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
