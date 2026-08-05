class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.3.0/sc-compose_1.3.0_aarch64-apple-darwin.tar.gz"
      sha256 "7aebdd120ca11bdf25f102e38ec8c09ebf46c2ad55e2cfdb0b58d50c8099c255"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.3.0/sc-compose_1.3.0_x86_64-apple-darwin.tar.gz"
      sha256 "c4dfa9445b9b89306380d597aa0a5824ccd00472de7d7b5e89aa89607f6a16c0"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.3.0/sc-compose_1.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "00b00f26121709e7a1761e0056c08dc7f2a4211fcb300750b9c7222aade9c746"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
