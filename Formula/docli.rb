class Docli < Formula
  desc "Language-agnostic CLI documentation generator: HTML + Markdown from a neutral command-tree JSON"
  homepage "https://github.com/randlee/docli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/docli/releases/download/v0.2.0/docli_0.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "6ad1e492068dd17ff76afefcce707f81080c2ed5a609ff9547af938050ba32b4"
    end

    on_intel do
      url "https://github.com/randlee/docli/releases/download/v0.2.0/docli_0.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "b7b41b0decc6462b455a6985a09e040e9ad45ccee8b9a58f077bc0eed9167f5b"
    end
  end

  on_linux do
    url "https://github.com/randlee/docli/releases/download/v0.2.0/docli_0.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "32f2e7b1c7308741c14ac14d11f1c33e9de8b7f1fb946ca5420ae31ea5f77b73"
  end

  def install
    bin.install "bin/docli"
    bin.install "bin/cargo-docli"
  end

  test do
    assert_match "Language-agnostic CLI documentation generator", shell_output("#{bin}/" + "docli" + " " + "--help")
  end
end