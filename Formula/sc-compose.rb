class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.1.0/sc-compose_1.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "f8a2c7634060134e644f8bbbda884a82e906adb26a4bd7be77b794c3803fbb1b"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.1.0/sc-compose_1.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "6108e3775e7c88e7c38b61f099ac7acf511ed2908d8317d787d0574e9d53d119"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.1.0/sc-compose_1.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2ff0c7026e11400aabea6b3e93aa707dda0dc2904abc6b500efa7d7f7528da48"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
