class Atm < Formula
  desc "CLI for local agent team mail workflows"
  homepage "https://github.com/randlee/atm-core"
  version "1.6.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.6.0/atm_1.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "64ac73a17a20d8b751bc7d9c17c9c12461e781f9e8c22e4d2d63d16419253765"
    end

    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.6.0/atm_1.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "892abce302f02ee99e9e6767b48ee952cb1aa324d370c9344ca738ce981d8368"
    end
  end

  on_linux do
    url "https://github.com/randlee/atm-core/releases/download/v1.6.0/atm_1.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "145d40a0c90611a306fb73dfb7e03caccb2b9723c690b80ae52e08ab1ddd2e17"
  end

  def install
    bin.install "bin/atm"
    bin.install "bin/atm-daemon"
    (pkgshare).install Dir["share/doc/atm/*"]
  end

  test do
    assert_match "ATM CLI", shell_output("#{bin}/" + "atm" + " " + "--help")
  end
end