# typed: false
# frozen_string_literal: true

class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.3.1/wyvern-macos-aarch64.tar.gz"
      sha256 "91af2ec2f1f91d8bc348869d0448e2765c546ff582ce26f17dfe000281b3a648"

      def install
        bin.install "wyvern"
        bin.install "wyvern-viewer"
        (share/"wyvern").install "share/wyvern/ui"
      end
    end
    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.3.1/wyvern-macos-aarch64.tar.gz"
      sha256 "91af2ec2f1f91d8bc348869d0448e2765c546ff582ce26f17dfe000281b3a648"

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
