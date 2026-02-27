# typed: false
# frozen_string_literal: true

# Alias formula — installs the same binaries as agent-team-mail.
# Prefer: brew install randlee/tap/agent-team-mail

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.23.0/atm_0.23.0_x86_64-apple-darwin.tar.gz"
      sha256 "52f5ada0595e5b5742de7c02202bf1654b96034fe7a657b14c824680d6562867"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.23.0/atm_0.23.0_aarch64-apple-darwin.tar.gz"
      sha256 "538b64592809869bd13116e3910ad41718a12aeaf003f73c1dcbcfd0b2d1ff54"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.23.0/atm_0.23.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "7cd393f25839f59e7d83f837a957600f24a02d883f50184006915460b15b0cf2"

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
