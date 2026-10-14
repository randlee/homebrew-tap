class Docli < Formula
  desc "Language-agnostic CLI documentation generator: HTML + Markdown from a neutral command-tree JSON"
  homepage "https://github.com/randlee/docli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/docli/releases/download/v0.1.0/docli_0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "3b9974692482b0277c96780864b4eea15c0775bda5f059182e656aab859c7550"
    end

    on_intel do
      url "https://github.com/randlee/docli/releases/download/v0.1.0/docli_0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "0f08031b2fe562ea850283413c3384af84f6144c020c6922c211641970961f90"
    end
  end

  on_linux do
    url "https://github.com/randlee/docli/releases/download/v0.1.0/docli_0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a328c51a396134c2b3bd776c28977902e599fbe3b0c6b6e47fbe3d2cc21ae74a"
  end

  def install
    bin.install "bin/docli"
    bin.install "bin/cargo-docli"
  end

  test do
    assert_match "Language-agnostic CLI documentation generator", shell_output("#{bin}/" + "docli" + " " + "--help")
  end
end