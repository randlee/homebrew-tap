class AgentTeamMail < Formula
  desc "CLI for local agent team mail workflows"
  homepage "https://github.com/randlee/atm-core"
  version "1.4.4"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.4.4/atm_1.4.4_aarch64-apple-darwin.tar.gz"
      sha256 "dde4f7761fbeb410e595a5bff065e7ce79559eb0d154c5c6507427f6af2016c7"
    end

    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.4.4/atm_1.4.4_x86_64-apple-darwin.tar.gz"
      sha256 "b9fc9dea0daac3da87f0b9c3946edbf4b2eeeb7a5538003c668da3911e938c9e"
    end
  end

  on_linux do
    url "https://github.com/randlee/atm-core/releases/download/v1.4.4/atm_1.4.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "03009450e059ca7a6fb18e6725e10e79b8fb209d20d675665346744e1b37a202"
  end

  def install
    bin.install "bin/atm"
    bin.install "bin/atm-daemon"
    ("pkgshare").install Dir["share/doc/atm/*"]
  end

  test do
    assert_match "CLI for local agent team mail workflows", shell_output("#{bin}/" + "atm" + " " + "--help")
  end
end