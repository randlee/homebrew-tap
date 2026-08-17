# typed: false
# frozen_string_literal: true

class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.3.0/wyvern-macos-aarch64.tar.gz"
      sha256 "c6140ba8dee9db84970e0f01b9976a2ac1bf328c09b890b98c2ab365cf04d94e"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.3.0/wyvern-macos-aarch64.tar.gz"
      sha256 "c6140ba8dee9db84970e0f01b9976a2ac1bf328c09b890b98c2ab365cf04d94e"

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
