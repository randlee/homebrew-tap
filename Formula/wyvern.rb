class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.6.0/wyvern_0.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "b5f5b986868d65b37d39966d7e9fa0c2bb6fd35fd0675397cbe3b4f77dc6b9dc"
    end

    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.6.0/wyvern_0.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "325880ca0edf0d2e0afda4cf2ef4818f1dc2c3d7fe3d5811cf55a3893bc43cc6"
    end
  end

  on_linux do
    url "https://github.com/randlee/wyvern/releases/download/v0.6.0/wyvern_0.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "549d7898e717475cbb0a1412cb768f6d0cb08053acc461dccb8e4fe66854315c"
  end

  def install
    bin.install "bin/wyvern"
    bin.install "bin/wyvern-viewer"
    ("share"/"wyvern"/"ui").install Dir["share/wyvern/ui/*"]
  end

  test do
    assert_match "Usage: wyvern", shell_output("#{bin}/" + "wyvern" + " " + "--help")
  end
end