class Decidr < Formula
  desc "TypeSafe decision client (decidr), sitr tree-sitter CLI, workspace crates, and Python bindings for Synaptic Canvas agents"
  homepage "https://github.com/randlee/sc-agent"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-agent/releases/download/v0.1.0/sc-agent_0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "bdd73e145ea88dbcd0729bed9fe4453e108fc09746a2e7a0de3d102bfd4277cd"
    end

    on_intel do
      url "https://github.com/randlee/sc-agent/releases/download/v0.1.0/sc-agent_0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "acf80af1ce946681ac4b8346b7feb134f057d3ca2a582322c84f10d13abc15de"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-agent/releases/download/v0.1.0/sc-agent_0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d48f0f7fa330329b0b7b24e01d50ca0c70acc349598339900d53351a90290d94"
  end

  def install
    bin.install "bin/decidr"
    bin.install "bin/sitr"
  end

  test do
    assert_match "decidr", shell_output("#{bin}/" + "decidr" + " " + "--version")
  end
end