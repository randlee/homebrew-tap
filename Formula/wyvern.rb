class Wyvern < Formula
  desc "Native webview dialogs for CLI agents (JSON in / JSON out)"
  homepage "https://github.com/randlee/wyvern"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/wyvern/releases/download/v0.8.0/wyvern_0.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "32c7d6ed53314a8d6cd07334f98375cd81cae6b40caca97ee6a5d1140806a8bd"
    end

    on_intel do
      url "https://github.com/randlee/wyvern/releases/download/v0.8.0/wyvern_0.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "168ee2464b5f9f40a34d7b144c5aee04d1b17df9ab25c16768936b49a107e974"
    end
  end

  on_linux do
    url "https://github.com/randlee/wyvern/releases/download/v0.8.0/wyvern_0.8.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "83af9e9c57c2c86dfa42343f0cf780f93e957c0851dedd74fda61db2d3eb80ea"
  end

  def install
    bin.install "bin/wyvern"
    bin.install "bin/wyvern-viewer"
    (share/"wyvern"/"ui").install Dir["share/wyvern/ui/*"]
  end

  test do
    assert_match "Usage: wyvern", shell_output("#{bin}/" + "wyvern" + " " + "--help")
  end
end