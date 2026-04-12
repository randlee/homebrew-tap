# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.1/atm_1.0.1_aarch64-apple-darwin.tar.gz"
      sha256 "9c8b05f8e8bf540510168db9216efe74dd2c4a2f9c01cba117d28daaa2e3e76f"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.1/atm_1.0.1_aarch64-apple-darwin.tar.gz"
      sha256 "9c8b05f8e8bf540510168db9216efe74dd2c4a2f9c01cba117d28daaa2e3e76f"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.0.1/atm_1.0.1_aarch64-apple-darwin.tar.gz"
        sha256 "9c8b05f8e8bf540510168db9216efe74dd2c4a2f9c01cba117d28daaa2e3e76f"

        def install
          bin.install "atm"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
