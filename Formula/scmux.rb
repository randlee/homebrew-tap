# typed: false
# frozen_string_literal: true

class Scmux < Formula
  desc "tmux session manager for multi-agent Claude Code teams"
  homepage "https://github.com/randlee/scmux"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/scmux/releases/download/v0.3.0/scmux-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d21e8d824629d9980aa74287c5e9ff0f895c93c34855685bc6366ce342fae0f"

      def install
        bin.install "scmux"
        bin.install "scmux-daemon"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/scmux/releases/download/v0.3.0/scmux-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "a7e001374fa9bcd79e224cc803b1b42651c22c8453d2f48fd3b0266b2ce06aa1"

        def install
          bin.install "scmux"
          bin.install "scmux-daemon"
        end
      end
    end
  end

  test do
    system "#{bin}/scmux", "--help"
  end
end
