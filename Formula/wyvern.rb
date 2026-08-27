# typed: false
# frozen_string_literal: true

class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.5.0/wyvern-macos-aarch64.tar.gz"
      sha256 "740739df29448076b77dcc533feac1cfd3b4185191585d5df290f4d75e3aa4a3"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.5.0/wyvern-macos-aarch64.tar.gz"
      sha256 "740739df29448076b77dcc533feac1cfd3b4185191585d5df290f4d75e3aa4a3"

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
