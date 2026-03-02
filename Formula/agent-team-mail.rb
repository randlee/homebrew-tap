# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.30.0/atm_0.30.0_x86_64-apple-darwin.tar.gz"
      sha256 "f5c2e991d327ba6591ae876f99883a03970c06ed7c5a25d3bde77ac4c19787a2"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.30.0/atm_0.30.0_aarch64-apple-darwin.tar.gz"
      sha256 "e0bcb72ac6ffcf5be2bbeb864f1261c65dd0b7f9e388c4d4de0575d5b5be17b7"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.30.0/atm_0.30.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "77be7c95fb8026be51c27882b85b5058ae27e69cf6383cbe1d3d417851669bf8"

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
