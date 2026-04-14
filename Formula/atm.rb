# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.2/atm_1.0.2_aarch64-apple-darwin.tar.gz"
      sha256 "b64f0c56e8117537cfd6d950bb2fdb02748c10c8cc6110dda89fac66363a4a63"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.0.2/atm_1.0.2_aarch64-apple-darwin.tar.gz"
      sha256 "b64f0c56e8117537cfd6d950bb2fdb02748c10c8cc6110dda89fac66363a4a63"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.0.2/atm_1.0.2_aarch64-apple-darwin.tar.gz"
        sha256 "b64f0c56e8117537cfd6d950bb2fdb02748c10c8cc6110dda89fac66363a4a63"

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
