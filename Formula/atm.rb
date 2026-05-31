# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.2.0/atm_1.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "18f397039fa6ceac50c14636ac6b2e959a9834a4e20f2b92f8848b5d31ef6c20"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.2.0/atm_1.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "18f397039fa6ceac50c14636ac6b2e959a9834a4e20f2b92f8848b5d31ef6c20"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.2.0/atm_1.2.0_aarch64-apple-darwin.tar.gz"
        sha256 "18f397039fa6ceac50c14636ac6b2e959a9834a4e20f2b92f8848b5d31ef6c20"

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
