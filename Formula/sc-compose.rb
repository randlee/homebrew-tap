class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.7.0/sc-compose_1.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "d7590a41921bef5a428bcbd33dda48006c6f6df5eafa83217cb820240fe6544b"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.7.0/sc-compose_1.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "6e32de8ee1fe627e64bd68f85dd4ba85d18fae2a8627d9dd8aeb4c42bdde674a"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.7.0/sc-compose_1.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5e2ffeb47072b26c47a44bfcc0d7068d0dfb8d5742feecc309fc535dab2e1c84"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare).install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/" + "sc-compose" + " " + "--help")
  end
end