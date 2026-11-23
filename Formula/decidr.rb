class Decidr < Formula
  desc "TypeSafe decision client (decidr), sitr tree-sitter CLI, workspace crates, and Python bindings for Synaptic Canvas agents"
  homepage "https://github.com/randlee/sc-agent"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-agent/releases/download/v0.4.0/sc-agent_0.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "343633ba4cabe27622e0110af98354888029338b7869813c7e0d40f3af5256a2"
    end

    on_intel do
      url "https://github.com/randlee/sc-agent/releases/download/v0.4.0/sc-agent_0.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "1fcd1246c923632b80ba7e8831904cf7e977ae1d1d593c3eb278930db46b317f"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-agent/releases/download/v0.4.0/sc-agent_0.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0dc0dfbaa7d4095c6cea964ba85c27e741e38e2a97c50801d07a1be34fa71587"
  end

  def install
    bin.install "bin/decidr"
    bin.install "bin/sitr"
    (pkgshare/"docs"/"decidr").install Dir["docs/decidr/*"]
    (pkgshare/"docs"/"sitr").install Dir["docs/sitr/*"]
  end

  test do
    assert_match "decidr", shell_output("#{bin}/" + "decidr" + " " + "--version")
  end
end