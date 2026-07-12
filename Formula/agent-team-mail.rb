# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.3.0/atm_1.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "e30f32dbb055769aba9a4e9953ce6b1bfafdf2328490836ac1bd6eea2461480b"

      def install
        bin.install "atm"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.3.0/atm_1.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "e30f32dbb055769aba9a4e9953ce6b1bfafdf2328490836ac1bd6eea2461480b"

      def install
        bin.install "atm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.3.0/atm_1.3.0_aarch64-apple-darwin.tar.gz"
        sha256 "e30f32dbb055769aba9a4e9953ce6b1bfafdf2328490836ac1bd6eea2461480b"

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
