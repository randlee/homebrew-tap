      # typed: false
      # frozen_string_literal: true

      class ScLint < Formula
        desc "Top-level sc-lint CLI and analyzer toolset for Rust workspaces"
        homepage "https://github.com/randlee/sc-lint"
        version "0.5.0"
        license "MIT"

        on_macos do
          on_intel do
            url "https://github.com/randlee/sc-lint/releases/download/v0.5.0/sc-lint_0.5.0_x86_64-apple-darwin.tar.gz"
            sha256 "5485bcfbbf812080cd596671cf17c1c396cb9e5b06cbe8deaaccb6e5e767238d"

            def install
      bin.install "sc-lint"
      bin.install "sc-lint-boundary"
      bin.install "sc-lint-portability"
      bin.install "sc-lint-runtime"
      pkgshare.install "sc-lint-docs"
    end
          end
          on_arm do
            url "https://github.com/randlee/sc-lint/releases/download/v0.5.0/sc-lint_0.5.0_aarch64-apple-darwin.tar.gz"
            sha256 "341181d3150ea066355b55e8d9bce207e545896fbafc4d8226b3ad6b9b66dbd4"

            def install
      bin.install "sc-lint"
      bin.install "sc-lint-boundary"
      bin.install "sc-lint-portability"
      bin.install "sc-lint-runtime"
      pkgshare.install "sc-lint-docs"
    end
          end
        end

        on_linux do
          on_intel do
            if Hardware::CPU.is_64_bit?
              url "https://github.com/randlee/sc-lint/releases/download/v0.5.0/sc-lint_0.5.0_x86_64-unknown-linux-gnu.tar.gz"
              sha256 "396e642062b0f6a515f7b958d72038426850287bf396f2c1546ee8c3778bc7c9"

              def install
        bin.install "sc-lint"
        bin.install "sc-lint-boundary"
        bin.install "sc-lint-portability"
        bin.install "sc-lint-runtime"
        pkgshare.install "sc-lint-docs"
      end
            end
          end
        end

        test do
  system "#{bin}/sc-lint", "--version"
  system "#{bin}/sc-lint-boundary", "--version"
  system "#{bin}/sc-lint-portability", "--version"
  system "#{bin}/sc-lint-runtime", "--version"
end
      end
