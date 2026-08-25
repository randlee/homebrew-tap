# typed: false
# frozen_string_literal: true

class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.4.0/wyvern-macos-aarch64.tar.gz"
      sha256 "cad9f105feb47c2919d38f4c9baffff1f2b3d7010e1839a8ede76b329ca3721d"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.4.0/wyvern-macos-aarch64.tar.gz"
      sha256 "cad9f105feb47c2919d38f4c9baffff1f2b3d7010e1839a8ede76b329ca3721d"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
  end

  test do
    assert_match "wyvern", shell_output("#{bin}/wyvern --help", 2)
  end
end
