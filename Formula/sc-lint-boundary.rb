class ScLintBoundary < Formula
  desc "Reusable repository policy enforcement lint tools for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.4/sc-lint_0.8.4_aarch64-apple-darwin.tar.gz"
      sha256 "798e245719cad2383650eb51dc7ccabd8eaa63e44c53733a4313a3a1cc69dbf2"
    end

    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.4/sc-lint_0.8.4_x86_64-apple-darwin.tar.gz"
      sha256 "65c3eb8721d3bc42b5e9603ebd058af83eed6a377e074a27ff483deab419a43c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.4/sc-lint_0.8.4_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3f133e7da3e756efc3d127a6f04eebeb2de1618585446a2830e9bab14c2e4c7b"
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.8.4/sc-lint_0.8.4_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d09a21411963b9fc107081879ce719f47d37aeed82e515908c4551705bbc98db"
    end
  end

  def install
    bin.install "bin/sc-lint-boundary"
  end

  test do
    assert_match "sc-lint-boundary", shell_output("#{bin}/" + "sc-lint-boundary" + " " + "--version")
  end
end