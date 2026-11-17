class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.9.0/sc-compose_1.9.0_aarch64-apple-darwin.tar.gz"
      sha256 "10b2d5f43ce6f2df847c31ba9763f4e66fdeae8262e0375784d79460564ddfef"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.9.0/sc-compose_1.9.0_x86_64-apple-darwin.tar.gz"
      sha256 "df494af114a94d5d5d38b4f1a2018dd2f08b14b1d1b21dd9a2bff6d320d1e8f8"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.9.0/sc-compose_1.9.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0f98747d9c1cba60a60f6e37d3eca2ccd2aa2f733348883b57705fe6a8d1b108"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "hello", shell_output("#{bin}/" + "sc-compose" + " " + "examples list")
  end
end