# typed: false
# frozen_string_literal: true

class ScLintBoundary < Formula
  desc "AST-driven boundary analysis and policy enforcement for Rust workspaces"
  homepage "https://github.com/randlee/sc-lint"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/randlee/sc-lint/releases/download/v0.1.0/sc-lint-boundary_0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "13f49b277e053db423694c1d5048675decef4e262ab68c15b545981e6a81c4c7"

      def install
        bin.install "sc-lint-boundary"
      end
    end
    on_arm do
      url "https://github.com/randlee/sc-lint/releases/download/v0.1.0/sc-lint-boundary_0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "648eaa091d1e94675a8ff13e1a845e5174c52127cec830f7b12a7548ff86ff4a"

      def install
        bin.install "sc-lint-boundary"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/randlee/sc-lint/releases/download/v0.1.0/sc-lint-boundary_0.1.0_x86_64-unknown-linux-gnu.tar.gz"
        sha256 "af5b592eac351bc5319061fb55cd088f01ed30030f0298062e80b8635460e1c6"

        def install
          bin.install "sc-lint-boundary"
        end
      end
    end
  end

  test do
    system "#{bin}/sc-lint-boundary", "--version"
  end
end
