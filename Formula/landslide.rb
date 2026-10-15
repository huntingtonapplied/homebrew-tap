class Landslide < Formula
  desc "Run and manage Landslide stochastic simulations from the terminal"
  homepage "https://landslide.global"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.landslide.global/cli/releases/0.1.1/landslide-darwin-arm64"
      sha256 "c3d3cfaee8b5bbed6d8d8ea1f31918552f5d3c34eee08266769fd497c45e7e28"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.landslide.global/cli/releases/0.1.1/landslide-linux-x86_64"
      sha256 "e77c7cbb06f00f45a0e7b183bcfe6f7a1a6bad26df061f9bb6fed5c722c991fe"
    end
  end

  def install
    binary = OS.mac? ? "landslide-darwin-arm64" : "landslide-linux-x86_64"
    bin.install binary => "landslide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/landslide --version")
  end
end
