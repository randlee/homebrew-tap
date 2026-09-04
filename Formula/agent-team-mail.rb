class AgentTeamMail < Formula
  desc "CLI for local agent team mail workflows"
  homepage "https://github.com/randlee/atm-core"
  version "1.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.5.0/atm_1.5.0_aarch64-apple-darwin.tar.gz"
      sha256 "52bedf566a683667421a2594cc0437f5540e736a0e9e10077568325f4069e8a6"
    end

    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.5.0/atm_1.5.0_x86_64-apple-darwin.tar.gz"
      sha256 "62b20ab21813d518c4525171e0475377639c96b7ee583dcf8dc271226f77934a"
    end
  end

  on_linux do
    url "https://github.com/randlee/atm-core/releases/download/v1.5.0/atm_1.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a5765e1585b43926804c6642d20401901d5516e02dcdf427cee7ff7ea216a59b"
  end

  def install
    bin.install "bin/atm"
    bin.install "bin/atm-daemon"
    (pkgshare).install Dir["share/doc/atm/*"]
  end

  test do
    assert_match "ATM CLI", shell_output("#{bin}/" + "atm" + " " + "--help")
  end
end