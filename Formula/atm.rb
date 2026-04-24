# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.4/atm_1.0.4_aarch64-apple-darwin.tar.gz"
      sha256 "ee434b2d0c8e4a63c4c6fd655c0449cdda399c34bf85a0f577a15b0deea7ca1d"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.4/atm_1.0.4_aarch64-apple-darwin.tar.gz"
      sha256 "ee434b2d0c8e4a63c4c6fd655c0449cdda399c34bf85a0f577a15b0deea7ca1d"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.0.4/atm_1.0.4_aarch64-apple-darwin.tar.gz"
        sha256 "ee434b2d0c8e4a63c4c6fd655c0449cdda399c34bf85a0f577a15b0deea7ca1d"

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
