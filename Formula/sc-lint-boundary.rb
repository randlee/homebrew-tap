      # typed: false
      # frozen_string_literal: true

      class ScLintBoundary < Formula
        desc "Legacy compatibility formula for the sc-lint boundary analyzer"
        homepage "https://github.com/randlee/sc-lint"
        version "0.4.0"
        license "MIT"

        on_macos do
          on_intel do
            url "https://github.com/randlee/sc-lint/releases/download/v0.4.0/sc-lint_0.4.0_x86_64-apple-darwin.tar.gz"
            sha256 "7298eb97935c2cea7acd7d98e47ec52b7dd251a6c44485450915e2ae1be91c70"

            def install
      bin.install "sc-lint-boundary"
    end
          end
          on_arm do
            url "https://github.com/randlee/sc-lint/releases/download/v0.4.0/sc-lint_0.4.0_aarch64-apple-darwin.tar.gz"
            sha256 "e71a782fab0c05222e292cacd23a3ceeda9197d13ca3703a52a63ebaa5d68aa0"

            def install
      bin.install "sc-lint-boundary"
    end
          end
        end

        on_linux do
          on_intel do
            if Hardware::CPU.is_64_bit?
              url "https://github.com/randlee/sc-lint/releases/download/v0.4.0/sc-lint_0.4.0_x86_64-unknown-linux-gnu.tar.gz"
              sha256 "db7a116eb93f9dc1100806c847ccda224078d890cb5abc822e38285b7051a550"

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
