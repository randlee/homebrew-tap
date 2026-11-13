class ScLint < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.9/sc-lint_0.8.9_aarch64-apple-darwin.tar.gz"
      sha256 "10c9a69c7f469a865599b13e3ff20896a2cd58ce437fb19987fa6bd550e3e412"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.9/sc-lint_0.8.9_x86_64-apple-darwin.tar.gz"
      sha256 "7e882925a5bd7f29f9ef21d37b12e32b660344ad4cfd10b1b51f175f340bb699"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.9/sc-lint_0.8.9_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3943fafb54e4f6515db97634651f005f78617a89ecc15f248341873619040542"
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.9/sc-lint_0.8.9_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71c7c273e95ae992783b4d3022b9f064373bfd563ab4f45164013bb89f1d0e52"
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