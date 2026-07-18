class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.2.0/sc-compose_1.2.0_aarch64-apple-darwin.tar.gz"
      sha256 "bface7a6cc75ea15bb936181d986dff10f2232fe7c0278f01bc42370dba4e1d5"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.2.0/sc-compose_1.2.0_x86_64-apple-darwin.tar.gz"
      sha256 "ccd867e0fae6adca80a4c52e1c98b1522cbe1df365c80fbdfe896a54a6133aea"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.2.0/sc-compose_1.2.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8f7d38ebfa8240313e461b93cdcb27d6a4e1acc9b6566ef7995ce5a5c9485108"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
