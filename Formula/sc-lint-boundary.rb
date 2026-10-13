class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.3/sc-lint_0.7.3_aarch64-apple-darwin.tar.gz"
      sha256 "0dee0adc32debc8c67886916aac3ca175947b6f8ff24a6142aa469fdf7e6fa62"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.3/sc-lint_0.7.3_x86_64-apple-darwin.tar.gz"
      sha256 "383c3394cc8b55fa7591e0c41fa5b6d597f17e5cad804662e54460def164c4cd"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-lint/releases/download/v0.7.3/sc-lint_0.7.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5422b87336bfbcc540770e065d87c8f60cd4549bc0dff8fa1f99299263127870"
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end