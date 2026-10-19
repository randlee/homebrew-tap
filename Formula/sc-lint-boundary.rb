class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.0/sc-lint_0.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "2d13443fe3999752b5d106d111eadb84c47118e47596a498c6591f8d6ccc9857"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.0/sc-lint_0.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "d6ad291e803c2d00df598fd0365d0e0be8ed682edcea1fb7144f8828ae081311"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-lint/releases/download/v0.8.0/sc-lint_0.8.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c17e1e62764ac69c21674a9eda43c1f5f1336f7601455167ccb0ad3669a7c9ca"
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end