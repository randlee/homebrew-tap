# typed: false
# frozen_string_literal: true

class Scmux < Formula
  desc "tmux session manager for multi-agent Claude Code teams"
  homepage "https://github.com/randlee/scmux"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/scmux/releases/download/v0.5.0/scmux-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "7819318bcdaac8a79a715cc336ef08b66c5df693c87044784e334020f106759c"

      def install
        bin.install "scmux"
        bin.install "scmux-daemon"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/scmux/releases/download/v0.5.0/scmux-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "2c32226a809525f6c7e0b2d9851c66717a7b9e53b0145117789920dad92795bc"

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
