class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.4.1/sc-compose_1.4.1_aarch64-apple-darwin.tar.gz"
      sha256 "e7f98bade5cece55a29690f90721e3a4152ebc2cd3e7203573e0c6b1cff081a1"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.4.1/sc-compose_1.4.1_x86_64-apple-darwin.tar.gz"
      sha256 "daffa41dae7872712b50f8b2abbbc3b5c5779baeeb5854f6b2a3c8b186f3df9f"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.4.1/sc-compose_1.4.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "18e7a0e823f93c8c75525841a6e0b2956e939870d51eef3bba83695812c93de9"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
