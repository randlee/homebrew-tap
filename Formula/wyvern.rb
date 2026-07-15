# typed: false
# frozen_string_literal: true

class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.1.0/wyvern-macos-aarch64.tar.gz"
      sha256 "42172933ad67696fe345069d777b64ac5a1d6a232c204b044673e7822190fe56"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.1.0/wyvern-macos-aarch64.tar.gz"
      sha256 "42172933ad67696fe345069d777b64ac5a1d6a232c204b044673e7822190fe56"

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
