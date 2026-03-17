# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.45.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.45.2/atm_0.45.2_x86_64-apple-darwin.tar.gz"
      sha256 "d229764ac29e78c24e8ed70b817f28b6afd86b1db1c7df61b5b24d5a587eb65d"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
        bin.install "sc-compose"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.45.2/atm_0.45.2_aarch64-apple-darwin.tar.gz"
      sha256 "3fc7f5d44d17be6e81625f879a11506b1cf4ace95cb2fc0de8113f6c15825642"

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
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.45.2/atm_0.45.2_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "98370677698a6e4c699c53751f1b4580806044adb8fdcee5d128dce79ad00747"

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
