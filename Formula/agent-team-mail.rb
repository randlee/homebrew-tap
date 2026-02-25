# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.19.0/atm_0.19.0_x86_64-apple-darwin.tar.gz"
      sha256 "8354928b07a687ec36e53b558cb0497e32cced88f788e3c15afb363c857459c9"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.19.0/atm_0.19.0_aarch64-apple-darwin.tar.gz"
      sha256 "8b1196c32e3997ff43e6afb2aece74aa42aa7766abaac7830c0b940765592e98"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.19.0/atm_0.19.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "0b5e3a4cdb11bcdb3a28fa2f9a1630e624cc0275bee10ba662013390ba92c796"

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
