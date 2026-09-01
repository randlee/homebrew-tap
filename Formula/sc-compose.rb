class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.6.1/sc-compose_1.6.1_aarch64-apple-darwin.tar.gz"
      sha256 "23db29325d95c0f4bb94dead48d02883e00311e82dc66820fe51b1dd855b7168"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.6.1/sc-compose_1.6.1_x86_64-apple-darwin.tar.gz"
      sha256 "476147e831bc70f3142787241853d94d290029c0c8e66cfe83211a6d60aaa002"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.6.1/sc-compose_1.6.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2e09706e0814f30adaacc88310db4ad629dcd9314d1182ecf12767686f828204"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare).install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/" + "sc-compose" + " " + "--help")
  end
end