class ScLint < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.8/sc-lint_0.8.8_aarch64-apple-darwin.tar.gz"
      sha256 "fca22eef8e185a4aa0b14f9eb4d391a2f9593e6bac4404bb048640073318c2c6"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.8/sc-lint_0.8.8_x86_64-apple-darwin.tar.gz"
      sha256 "5661c71c79474ccdfa1e65a1fd386df5cf5def1453ae55058c933ac1819713ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.8/sc-lint_0.8.8_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08234293d16bd617f93632ff63ac345db850d9a4e4c9f3f7dedbbf404b0b22ba"
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.8/sc-lint_0.8.8_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "794e3ad20fabafeb020b9b2a62c2d549f4e18fd4fc3f0a49de20a105f6f7ca6e"
    end
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