# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.32.0/atm_0.32.0_x86_64-apple-darwin.tar.gz"
      sha256 "9240003213a42fdaae780a58a8b991171608683d721874499e84e0da58fbeefd"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.32.0/atm_0.32.0_aarch64-apple-darwin.tar.gz"
      sha256 "9e852d5cd9be653965a09e1e306be2cb3c9ab18b136faa91a672a3cacb08bdc5"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.32.0/atm_0.32.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "892cfc5a6e19fce010bad62fc864094781a22d5af4d5a746b2aed4e2fcd58440"

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
