# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.0/atm_1.0.0_x86_64-apple-darwin.tar.gz"
      sha256 "e6041fd3ae09d2b6dff96c85962a82c9f301d83dbd98008221ec8e0f1fecdc51"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.0/atm_1.0.0_aarch64-apple-darwin.tar.gz"
      sha256 "1be1cd4f1477c4d237bfb46e7d1b76c6d85754e4c303063579543127f86859c6"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.0.0/atm_1.0.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "32749041c52b496ebd39626c5144c33ba1693c166e22fefb64d50e8666bc3569"

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
