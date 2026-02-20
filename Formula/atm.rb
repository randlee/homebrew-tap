# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with AI agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.11.0/atm_0.11.0_x86_64-apple-darwin.tar.gz"
      sha256 "52e5a62578c503b2d6066e684be8e74e6daafc1dfbce277c0fbfe34f1b0b9355"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.11.0/atm_0.11.0_aarch64-apple-darwin.tar.gz"
      sha256 "b13bf4000691343c3617af5bb9d7d58143cac08539d513bd27b23c19214824d5"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.11.0/atm_0.11.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "cab59d1aa6a86266bb3be0ea39c09084ca893c1c78c1ecf19df9640bc8a460e4"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
