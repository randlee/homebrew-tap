class Atm < Formula
  desc "CLI for local agent team mail workflows"
  homepage "https://github.com/randlee/atm-core"
  version "1.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/randlee/atm-core/releases/download/v1.6.1/atm_1.6.1_aarch64-apple-darwin.tar.gz"
      sha256 "91fe1f080d1e5d072c892bc50cc9532bc210f4a8a20785b8b2a1219815be06f7"
    end

    on_intel do
      url "https://github.com/randlee/atm-core/releases/download/v1.6.1/atm_1.6.1_x86_64-apple-darwin.tar.gz"
      sha256 "fc5051b56eed56bdb684e77d327dcf557594c2264bd11190edfd945e05c267e0"
    end
  end

  on_linux do
    url "https://github.com/randlee/atm-core/releases/download/v1.6.1/atm_1.6.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8507648880840a083da1cf101b6379cce68905f71a37c13ab254fcb5a154954e"
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