      # typed: false
      # frozen_string_literal: true

      class ScLint < Formula
        desc "Top-level sc-lint CLI and analyzer toolset for Rust workspaces"
        homepage "https://github.com/randlee/sc-lint"
        version "0.2.0"
        license "MIT"

        on_macos do
          on_intel do
            url "https://github.com/randlee/sc-lint/releases/download/v0.2.0/sc-lint_0.2.0_x86_64-apple-darwin.tar.gz"
            sha256 "dabad0604e734f1f4149eb54c0729d762fe94b4e2ddbffaa74d4b78396970ea4"

            def install
      bin.install "sc-lint"
      bin.install "sc-lint-boundary"
      bin.install "sc-lint-portability"
      bin.install "sc-lint-runtime"
    end
          end
          on_arm do
            url "https://github.com/randlee/sc-lint/releases/download/v0.2.0/sc-lint_0.2.0_aarch64-apple-darwin.tar.gz"
            sha256 "31c7648580b2858cc0f8cce65b52013f5aeb2fd6ad96a0c260ce91b20d937df1"

            def install
      bin.install "sc-lint"
      bin.install "sc-lint-boundary"
      bin.install "sc-lint-portability"
      bin.install "sc-lint-runtime"
    end
          end
        end

        on_linux do
          on_intel do
            if Hardware::CPU.is_64_bit?
              url "https://github.com/randlee/sc-lint/releases/download/v0.2.0/sc-lint_0.2.0_x86_64-unknown-linux-gnu.tar.gz"
              sha256 "4d08355ec2d150a820f50c6fc4a1f46c46feb43bb9412815e317e799286f0d70"

              def install
        bin.install "sc-lint"
        bin.install "sc-lint-boundary"
        bin.install "sc-lint-portability"
        bin.install "sc-lint-runtime"
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
