class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.7.0/wyvern_0.7.0_aarch64-apple-darwin.tar.gz"
      sha256 "51bb9c96c81a7da0abc282f65187d2a9c18b65cccf3bbead6d15417e6c9e214f"
    end

    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.7.0/wyvern_0.7.0_x86_64-apple-darwin.tar.gz"
      sha256 "7f16ad1fa1e8e412307ee55c019594032b4b22f6b6a6d4911adf0e60eddd6b8b"
    end
  end

  on_linux do
    url "https://github.com/randlee/wyvern/releases/download/v0.7.0/wyvern_0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "92235dd9097890d1ffabcff4b33a4d19fafc231165668ceb961f05e1593f486f"
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