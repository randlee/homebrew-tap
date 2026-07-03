# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.2.3/atm_1.2.3_aarch64-apple-darwin.tar.gz"
      sha256 "a1dc8877bbaa658ad7fc743b3e93265cca5c93536cfa84f1917fee650d686ac4"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.2.3/atm_1.2.3_aarch64-apple-darwin.tar.gz"
      sha256 "a1dc8877bbaa658ad7fc743b3e93265cca5c93536cfa84f1917fee650d686ac4"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.2.3/atm_1.2.3_aarch64-apple-darwin.tar.gz"
        sha256 "a1dc8877bbaa658ad7fc743b3e93265cca5c93536cfa84f1917fee650d686ac4"

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
