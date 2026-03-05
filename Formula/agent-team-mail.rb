# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.35.0/atm_0.35.0_x86_64-apple-darwin.tar.gz"
      sha256 "73a3b6a44f9cb0f7a72be885148ff75df58df5e44aa6ff5cb87a8dd27fe3b9ec"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.35.0/atm_0.35.0_aarch64-apple-darwin.tar.gz"
      sha256 "9450c74808ba6e8db6683b9401a1443d767980b4facf8d244fbca53bda1d7191"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.35.0/atm_0.35.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "b123332d699c3f02dfc739b66eed9fd0e2d1d4c95adef966c6093ca650d52c41"

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
