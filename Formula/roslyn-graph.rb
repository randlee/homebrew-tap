class RoslynGraph < Formula
  desc "Extract .NET assembly type graphs to RDF"
  homepage "https://github.com/randlee/roslyn-graph"
  depends_on :macos
  url "https://github.com/randlee/roslyn-graph/releases/download/v0.1.0/roslyn-graph_0.1.0_osx-x64.tar.gz"
  sha256 "a90882995110a3f52d6fd3818251f35975aa23b8ff1f62a4254186064ec01029"
  version "0.1.0"
  license "MIT"

  on_arm do
    url "https://github.com/randlee/roslyn-graph/releases/download/v0.1.0/roslyn-graph_0.1.0_osx-arm64.tar.gz"
    sha256 "41e208c0c30356347a538f095e5b3d95beacda86caeae90534d7c28ba5572f01"
  end

  def install
    bin.install "RoslynToRdf.Cli" => "roslyn2rdf"
  end

  test do
    assert_match "roslyn2rdf", shell_output("#{bin}/roslyn2rdf --help")
  end
end
