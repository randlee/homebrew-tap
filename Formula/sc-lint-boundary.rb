class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.2/sc-lint_0.8.2_aarch64-apple-darwin.tar.gz"
      sha256 "423144ac4f8e528b6c3b22c1fa390431cdbb9461d2a2e4a36e7f8b0096af2a0e"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.2/sc-lint_0.8.2_x86_64-apple-darwin.tar.gz"
      sha256 "d009668964c2057deef097986de3bdfca10951d5de643c24291492912066f08b"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-lint/releases/download/v0.8.2/sc-lint_0.8.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3e2ae7c909d3dae68dfc314ddc2d35e486527be8bff069c6ac1f82033932a1f6"
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end