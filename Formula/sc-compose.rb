class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  url "https://github.com/randlee/sc-compose/releases/download/v1.0.0/sc-compose_1.0.0_aarch64-apple-darwin.tar.gz"
  sha256 "818ced1ff502958c532250f94283dfcc5aa98c2e130fb4aed1a1318856f035ea"
  version "1.0.0"
  license "MIT"

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
