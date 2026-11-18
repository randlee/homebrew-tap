class Decidr < Formula
  desc "TypeSafe decision client (decidr), sitr tree-sitter CLI, workspace crates, and Python bindings for Synaptic Canvas agents"
  homepage "https://github.com/randlee/sc-agent"
  version "0.2.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-agent/releases/download/v0.2.9/sc-agent_0.2.9_aarch64-apple-darwin.tar.gz"
      sha256 "61a0739c9eb4ea254d300d34b38e951adc7d7f649757c498a05976a801cce5ad"
    end

    on_intel do
      url "https://github.com/randlee/sc-agent/releases/download/v0.2.9/sc-agent_0.2.9_x86_64-apple-darwin.tar.gz"
      sha256 "5e244635a0ab328e780e5dd0f261074ae098834880479e78d560a23d49d72cac"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-agent/releases/download/v0.2.9/sc-agent_0.2.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "12ec4c3385b98da23cd59d6b3e8053c593ef56d0c34111f0e6402ea726311ab6"
  end

  def install
    bin.install "bin/decidr"
    bin.install "bin/sitr"
  end

  test do
    assert_match "decidr", shell_output("#{bin}/" + "decidr" + " " + "--version")
  end
end