# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.1.0/atm_1.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "51888f02c174edd109f3339530946c8c36920827274bc1ddd837e860f25c7ebd"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.1.0/atm_1.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "51888f02c174edd109f3339530946c8c36920827274bc1ddd837e860f25c7ebd"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.1.0/atm_1.1.0_aarch64-apple-darwin.tar.gz"
        sha256 "51888f02c174edd109f3339530946c8c36920827274bc1ddd837e860f25c7ebd"

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
