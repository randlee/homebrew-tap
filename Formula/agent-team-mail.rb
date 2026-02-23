# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.17.0/atm_0.17.0_x86_64-apple-darwin.tar.gz"
      sha256 "6e7a2186986e6f5b25b47d867a36334604fb39f4aba5fcf912ddeedfbc0ff443"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.17.0/atm_0.17.0_aarch64-apple-darwin.tar.gz"
      sha256 "02031d51e40a501efc8d686c05bb65a065f4305b57ff6c5b97cfaebcfc3d30f6"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.17.0/atm_0.17.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "59b28490784177fc61586edb1ea4c7c87b16e433397a8018eb91b698545ad924"

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
