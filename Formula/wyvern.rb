# typed: false
# frozen_string_literal: true

class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.2.1/wyvern-macos-aarch64.tar.gz"
      sha256 "5cfbc9d67232976036c7406d04486aaf98811821a78b4c93a0b953761404f510"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.2.1/wyvern-macos-aarch64.tar.gz"
      sha256 "5cfbc9d67232976036c7406d04486aaf98811821a78b4c93a0b953761404f510"

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
