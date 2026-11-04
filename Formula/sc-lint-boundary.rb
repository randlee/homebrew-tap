class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.5/sc-lint_0.8.5_aarch64-apple-darwin.tar.gz"
      sha256 "0f58650d3f077cd7eb2aaf38a1ed89510b69651eedbe14df0ba1956908eb6d42"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.5/sc-lint_0.8.5_x86_64-apple-darwin.tar.gz"
      sha256 "050076915c7ac0a2b3b77eb8f128760f39f09e71d7af1bd33f885d45fbf042b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.5/sc-lint_0.8.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26be73e1c52ac0a003ef6361a80e105ee55f20c5f1a6fa07b985b248ea9c23ae"
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.5/sc-lint_0.8.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b190782ad8a93794704a5da022530876f1cb90e316b176fba61e869851a24e9"
    end
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end