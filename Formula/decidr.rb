class Decidr < Formula
  desc "TypeSafe decision client (decidr), sitr tree-sitter CLI, workspace crates, and Python bindings for Synaptic Canvas agents"
  homepage "https://github.com/randlee/sc-agent"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-agent/releases/download/v0.4.1/sc-agent_0.4.1_aarch64-apple-darwin.tar.gz"
      sha256 "b16734732d5c8f61160c26b787b9a90eb4e0a6909eff186b810b8b996fdafa3d"
    end

    on_intel do
      url "https://github.com/randlee/sc-agent/releases/download/v0.4.1/sc-agent_0.4.1_x86_64-apple-darwin.tar.gz"
      sha256 "009cad29ca70854cf3a7a126a0285ff21b4ead3cb895c3e9df6551b444bf3aaf"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-agent/releases/download/v0.4.1/sc-agent_0.4.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8513652ac2367d70e309dcaeff4a41d1e64f216bab6ba5d2c086eb1cd3b7815b"
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