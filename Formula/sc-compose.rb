class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.5.0/sc-compose_1.5.0_aarch64-apple-darwin.tar.gz"
      sha256 "7751631cd86e6644e88cfcf3dd80f352779350f9f24f891f52983c8da0ed4620"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.5.0/sc-compose_1.5.0_x86_64-apple-darwin.tar.gz"
      sha256 "618bf0d856aa00dcdfb271ca098db6c5a4c228c6778b2cf2c7d7dbc7ff70966e"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.5.0/sc-compose_1.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1830bd70194832c5a6ef310c555e575a38922c6bb03141b51a2ab5ca1f3a509e"
  end

  def install
    bin.install "bin/sc-compose"
    ("pkgshare").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/" + "sc-compose" + " " + "--help")
  end
end