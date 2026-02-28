# typed: false
# frozen_string_literal: true

# Alias formula — installs the same binaries as agent-team-mail.
# Prefer: brew install randlee/tap/agent-team-mail

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.24.0/atm_0.24.0_x86_64-apple-darwin.tar.gz"
      sha256 "236de7727ab0eb6bbafeff678a2f0a62b0b3150d6e8823c734bbd2eaedc2462c"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.24.0/atm_0.24.0_aarch64-apple-darwin.tar.gz"
      sha256 "cc1053724cf7927bb013c86529ebceec0918a2e1a785c7bb2f1999542067ff90"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.24.0/atm_0.24.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "cade91ec36ac2e9e99db6d29bd2d1a47624ca4c377b64ab03d3bb3aae523c0bd"

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
