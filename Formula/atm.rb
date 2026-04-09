# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.0/atm_1.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "1be1cd4f1477c4d237bfb46e7d1b76c6d85754e4c303063579543127f86859c6"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.0/atm_1.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "1be1cd4f1477c4d237bfb46e7d1b76c6d85754e4c303063579543127f86859c6"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.0.0/atm_1.0.0_aarch64-apple-darwin.tar.gz"
        sha256 "1be1cd4f1477c4d237bfb46e7d1b76c6d85754e4c303063579543127f86859c6"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
          bin.install "atm-tui"
          bin.install "sc-compose"
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
