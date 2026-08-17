# typed: false
# frozen_string_literal: true

class Atm < Formula
  desc "CLI for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/atm-core"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.4.3/atm_1.4.3_x86_64-apple-darwin.tar.gz"
      sha256 "34b8a08b0fa2fff64013072a94f0e167628b12eb8caccacdb27da36cb31759d4"

      def install
        bin.install "bin/atm", "bin/atm-daemon"
      end
    end
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.4.3/atm_1.4.3_aarch64-apple-darwin.tar.gz"
      sha256 "08dd9c27bb67b9e107ef1f5d18e5d042b644ca407068351ab148e17df6feebbb"

      def install
        bin.install "bin/atm", "bin/atm-daemon"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/atm-core/releases/download/v1.4.3/atm_1.4.3_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "aecda8942e0942b00a851959211aa1ecdbfa5bacdfe819cec0f367d103f65a10"

        def install
          bin.install "bin/atm", "bin/atm-daemon"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
