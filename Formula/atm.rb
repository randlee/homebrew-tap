# typed: false
# frozen_string_literal: true

# Alias formula — installs the same binaries as agent-team-mail.
# Prefer: brew install randlee/tap/agent-team-mail

class Atm < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.13.0/atm_0.13.0_x86_64-apple-darwin.tar.gz"
      sha256 "db13448f7b5a8d06ebd00a8110f6763dfffaa482c36d3685a26b1eedf7c0c5ca"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.13.0/atm_0.13.0_aarch64-apple-darwin.tar.gz"
      sha256 "0e5bc8a1c99caffc7857873129f47394c0f013b7a8a5eb6c7715919582c815ed"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.13.0/atm_0.13.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "24db64418eb27170dc3f3374f0d06e8cacd6252a02a1d02e932aeb4cdfac1e11"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
