# typed: false
# frozen_string_literal: true

class Scmux < Formula
  desc "tmux session manager for multi-agent Claude Code teams"
  homepage "https://github.com/randlee/scmux"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/scmux/releases/download/v0.4.1/scmux-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "b4e0d7227b7fc608c1269c175bcd0d9780b0569392a3a9ca48fd2b2328eb662a"

      def install
        bin.install "scmux"
        bin.install "scmux-daemon"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/scmux/releases/download/v0.4.1/scmux-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "773c75d5a07f27b3260af5d73f234835c8e156c646c00860875f9633aaf356e1"

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
