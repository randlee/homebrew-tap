# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.31.0/atm_0.31.0_x86_64-apple-darwin.tar.gz"
      sha256 "06b93cff52499ceb7ec60da75f6a7abd7ce591afd77dd0bc3997247da4ef7ead"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.31.0/atm_0.31.0_aarch64-apple-darwin.tar.gz"
      sha256 "741a756b998477ae972232be1c3a5737dbd318379c6c4e94b3492deb44712d78"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.31.0/atm_0.31.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "d660e82f6a372815f16fd9b755ab386774fe0d4e8337478a80cdb16a5edd495e"

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
