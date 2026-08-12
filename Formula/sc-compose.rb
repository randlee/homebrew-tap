class ScCompose < Formula
  desc "Standalone CLI for template composition"
  homepage "https://github.com/randlee/sc-compose"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/randlee/sc-compose/releases/download/v1.4.0/sc-compose_1.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "c9b2924970aa113f0e2457861ee79e486bbe5f3df68ec37e86356e6c6e8597cb"
    end

    on_intel do
      url "https://github.com/randlee/sc-compose/releases/download/v1.4.0/sc-compose_1.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "5cde9808b701722ad6764ac0778eb6bb9032e68fbc93f767d1094db456b776f3"
    end
  end

  on_linux do
    url "https://github.com/randlee/sc-compose/releases/download/v1.4.0/sc-compose_1.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f2aed93d40dfc52f6c1f772e50355854dd24fa6fc0eb83a4d9d5ec4dc9e81942"
  end

  def install
    bin.install "bin/sc-compose"
    (pkgshare/"examples").install Dir["share/sc-compose/examples/*"]
  end

  test do
    assert_match "Standalone template composition CLI", shell_output("#{bin}/sc-compose --help")
  end
end
