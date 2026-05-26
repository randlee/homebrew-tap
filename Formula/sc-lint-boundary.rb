      # typed: false
      # frozen_string_literal: true

      class ScLintBoundary < Formula
        desc "Legacy compatibility formula for the sc-lint boundary analyzer"
        homepage "https://github.com/randlee/sc-lint"
        version "0.3.0"
        license "MIT"

        on_macos do
          on_intel do
            url "https://github.com/randlee/sc-lint/releases/download/v0.3.0/sc-lint_0.3.0_x86_64-apple-darwin.tar.gz"
            sha256 "0e96770240d68a1030ad091b5b7f9f25acf5cbc87ec870ae68bce4b59c2a4930"

            def install
      bin.install "sc-lint-boundary"
    end
          end
          on_arm do
            url "https://github.com/randlee/sc-lint/releases/download/v0.3.0/sc-lint_0.3.0_aarch64-apple-darwin.tar.gz"
            sha256 "37eeb97c8759a32b9e271721e362c0152d60327786887a4e2d33ef32befb94f3"

            def install
      bin.install "sc-lint-boundary"
    end
          end
        end

        on_linux do
          on_intel do
            if Hardware::CPU.is_64_bit?
              url "https://github.com/randlee/sc-lint/releases/download/v0.3.0/sc-lint_0.3.0_x86_64-unknown-linux-gnu.tar.gz"
              sha256 "81bcff9a215677da3ddd613acd5f5afeae64ce5ac13af805ce99f8f76de4bc5e"

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
