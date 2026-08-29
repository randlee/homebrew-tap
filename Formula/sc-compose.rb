class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.6.0/sc-compose_1.6.0_aarch64-apple-darwin.tar.gz"
      sha256 "647e10cf5d97c211846e9c84e21e30a5419afabb328e79abe2733e5c8a6fb54f"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.6.0/sc-compose_1.6.0_x86_64-apple-darwin.tar.gz"
      sha256 "71bd725a530dd151a31f871ad0200a62066bb6a14ca0eeecbabea02472b24acf"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.6.0/sc-compose_1.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4546848b8dfa5a7b808b3254171095e24ceeaa455135401b82c48fd3dc262e41"
  end

  def install
    bin.install "bin/sc-compose"
    ("pkgshare").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/" + "sc-compose" + " " + "--help")
  end
end