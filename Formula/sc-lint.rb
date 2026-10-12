class ScLint < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.2/sc-lint_0.7.2_aarch64-apple-darwin.tar.gz"
      sha256 "8dbd0f6f7b4361a25a1c4beea102ab7983e1900182bca8b85516cc9ead148d68"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.2/sc-lint_0.7.2_x86_64-apple-darwin.tar.gz"
      sha256 "48e9d63585cc2bcbd008a28010e3029585b3b595b3b6db71d80a89fa1c89f2c4"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-lint/releases/download/v0.7.2/sc-lint_0.7.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b6eff8471f0ebe00edf14fbccd115c5a3b3fc1227452189c9760a88287219659"
  end

  def install
    bin.install "bin/sc-lint"
    bin.install "bin/sc-lint-boundary"
    bin.install "bin/sc-lint-portability"
    bin.install "bin/sc-lint-runtime"
    (pkgshare/"sc-lint-docs").install Dir["share/sc-lint/sc-lint-docs/*"]
  end

  test do
    assert_match "sc-lint", shell_output("#{bin}/" + "sc-lint" + " " + "--version")
  end
end