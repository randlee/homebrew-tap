class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.6/sc-lint_0.8.6_aarch64-apple-darwin.tar.gz"
      sha256 "525bd559073899b2d5767802460721bb99e1b15cc6f129f68281fae010594d16"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.6/sc-lint_0.8.6_x86_64-apple-darwin.tar.gz"
      sha256 "ce2155a7ddc45809ae28c0d3ca223cc52f2b41b0fd1f76c7d709cd7c32ae895d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.6/sc-lint_0.8.6_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a89c830c895215c120041488763c6316aff94e3a19be8eb585308225ed9abf2f"
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.6/sc-lint_0.8.6_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea91fcab7809cd67af375d7221e813d343f5759fe10bc5d6b072cf24a18e412d"
    end
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end