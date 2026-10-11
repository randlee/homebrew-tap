class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.0/sc-lint_0.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "e61774393d98abe5ef6d2b058dc1b9111674d187117ad3b99ca80c0ff47a04ad"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.0/sc-lint_0.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "c64b3c1c8d5a4edaa1d654918d450739bcfcd5edf23ba014d151e7a2a2ada7c6"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-lint/releases/download/v0.7.0/sc-lint_0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "96ca3a9981adc7942366ace4349ab3d1689f102f6ec3f62cc4b3250f8454711a"
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end