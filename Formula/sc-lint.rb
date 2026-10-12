class ScLint < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.1/sc-lint_0.7.1_aarch64-apple-darwin.tar.gz"
      sha256 "2339e5c864a705c808f45d0778078798d62a88138c30017e66f36492bc3d25c1"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.7.1/sc-lint_0.7.1_x86_64-apple-darwin.tar.gz"
      sha256 "3c6c156fbacbd591748d9c8b0fc02602a52dc8511be870d5bfc858a2a5f9e14b"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-lint/releases/download/v0.7.1/sc-lint_0.7.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c75307762c7d9d9571fc7a59be1b3d6152999bf82b6c2831b7d36048fc718604"
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