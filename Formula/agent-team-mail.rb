# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.3.1/atm_1.3.1_x86_64-apple-darwin.tar.gz"
      sha256 "fbcd776abd06b8f4ebdeec4c270b9b0ade192ec40551e1e5aa97b308e4447e6b"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.3.1/atm_1.3.1_aarch64-apple-darwin.tar.gz"
      sha256 "f6b7428c55d0cc014a588cbd2ff442f959c502a44dc11c5394d1d2c7f67bcddb"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.3.1/atm_1.3.1_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "22d9fc6e74e453fc310a684e1e83b92bc71faa9ec47592b0bdf835feeb65cae1"

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
