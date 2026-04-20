class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  url "https://github.com/randlee/sc-compose/releases/download/v1.0.1/sc-compose_1.0.1_aarch64-apple-darwin.tar.gz"
  sha256 "71556cd6663c38a31281b5f381da49aa93cfd9b3cadb907bb75dee229866b2a6"
  version "1.0.1"
  license "MIT"

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
