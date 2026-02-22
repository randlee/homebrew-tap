# typed: false
# frozen_string_literal: true

class AgentTeamMail < Formula
  desc "CLI and daemon for mail-like messaging with Claude agent teams"
  homepage "https://github.com/randlee/agent-team-mail"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.15.0/atm_0.15.0_x86_64-apple-darwin.tar.gz"
      sha256 "35b6f69910cfc2b923e95258fdbf517fcda40d1b551a438325d0dd4bcbd59c23"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
    on_arm do
      url "https://github.com/randlee/agent-team-mail/releases/download/v0.15.0/atm_0.15.0_aarch64-apple-darwin.tar.gz"
      sha256 "44fbbe2cb526f497d26d6d08b207a23f63a2b7be6bdbb80874574f74c7ff22e2"

      def install
        bin.install "atm"
        bin.install "atm-daemon"
        bin.install "atm-agent-mcp"
        bin.install "atm-tui"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/agent-team-mail/releases/download/v0.15.0/atm_0.15.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "79bbc08fc701d2466757e2da7c631ee2cc50fb39d3d88c49fa4986aa7e3acff5"

        def install
          bin.install "atm"
          bin.install "atm-daemon"
          bin.install "atm-agent-mcp"
          bin.install "atm-tui"
        end
      end
    end
  end

  test do
    system "#{bin}/atm", "--version"
  end
end
