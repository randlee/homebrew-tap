class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.8.0/sc-compose_1.8.0_aarch64-apple-darwin.tar.gz"
      sha256 "c7b03453d357f36997b27467b02cfe6124713ca1ee9344175c31f8e0dc5f5408"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.8.0/sc-compose_1.8.0_x86_64-apple-darwin.tar.gz"
      sha256 "5f70b67b35e2c3f8e2784a7aea631fbf1ca0cf91f8378e4f1b44f96242a9d057"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.8.0/sc-compose_1.8.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a12a16259c1cab58c4c611320653e442fe3440c2a15cce0ba617ad77d145809a"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare).install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/" + "sc-compose" + " " + "--help")
  end
end