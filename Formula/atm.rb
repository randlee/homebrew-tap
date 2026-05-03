# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.1.2/atm_1.1.2_aarch64-apple-darwin.tar.gz"
      sha256 "28db857fc18a42ffd10615f4e36c7b001fb90b738cdcc8ba0a35ccb92cbeecb0"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.1.2/atm_1.1.2_aarch64-apple-darwin.tar.gz"
      sha256 "28db857fc18a42ffd10615f4e36c7b001fb90b738cdcc8ba0a35ccb92cbeecb0"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.1.2/atm_1.1.2_aarch64-apple-darwin.tar.gz"
        sha256 "28db857fc18a42ffd10615f4e36c7b001fb90b738cdcc8ba0a35ccb92cbeecb0"

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
