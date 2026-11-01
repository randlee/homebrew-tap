class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.3/sc-lint_0.8.3_aarch64-apple-darwin.tar.gz"
      sha256 "26b551d1d37edef69d08fab04acec23963d4d94305aedd1950f9913aa68fd46c"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.3/sc-lint_0.8.3_x86_64-apple-darwin.tar.gz"
      sha256 "4814ce52979255823446841f1b6d656eda3e0eb88739c32969fcbb5f131af20e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.3/sc-lint_0.8.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bfcdad5f9ab76fc8b3f8f7e560bbe1a6e2674502f678a1297d13dd894bb2576"
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.3/sc-lint_0.8.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c72b60c24956d348b8553509ec9446bc0922f5613021438b33b938949ee1051"
    end
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end