# typed: false
# frozen_string_literal: true

# Alias formula — installs the same binaries as agent-team-mail.
# Prefer: brew install randlee/tap/agent-team-mail

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.27.0/atm_0.27.0_x86_64-apple-darwin.tar.gz"
      sha256 "2c05d2c959b815e69e679bbf1069439f8131d47ce7fc71fca1e972bd0152c092"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.27.0/atm_0.27.0_aarch64-apple-darwin.tar.gz"
      sha256 "7d6999ac53187e31ede5fa502ecf03984256ea71e3cf6fc2c739a6d4724a9402"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.27.0/atm_0.27.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "be828dfb96cbeef6d0da227ba828a4679ea47265dcdf410121293776eeeac5e5"

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
