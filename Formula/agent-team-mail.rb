# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.8.0/atm_0.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "bc5bf50212555cce3b7f1484b2bb5abc86185dc02131b55d4ca5c9926c2c3093"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.8.0/atm_0.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "a001eb694964904bd984cb51fc7adf4f57f32b62cc09aa0451b5fd0117a25fc2"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.8.0/atm_0.8.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "a48ffa064e0f3f06c624562c1cd311abeb26f09a2b0223c91e649d98733e576d"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
