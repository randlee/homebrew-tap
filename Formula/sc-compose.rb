class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  url "https://github.com/randlee/sc-compose/releases/download/v1.1.0/sc-compose_1.1.0_aarch64-apple-darwin.tar.gz"
  sha256 "f8a2c7634060134e644f8bbbda884a82e906adb26a4bd7be77b794c3803fbb1b"
  version "1.1.0"
  license "MIT"

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
