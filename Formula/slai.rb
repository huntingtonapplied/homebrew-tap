class Slai < Formula
  desc "Inspect SmartLoad AI freight loads, shipments, and metrics from the shell"
  homepage "https://smartloadai.com"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.smartloadai.com/cli/releases/0.1.2/slai-darwin-arm64"
      sha256 "9fc254f4c3ccfa9e665957eba9777601f2eafff036acf5889509094cadd8a244"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.smartloadai.com/cli/releases/0.1.2/slai-linux-x86_64"
      sha256 "532b8c695016257ae3c6cda10c21412dd064811d76d2d0e215db78f30be90f5b"
    end
  end

  def install
    binary = OS.mac? ? "slai-darwin-arm64" : "slai-linux-x86_64"
    bin.install binary => "slai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/slai --version")
  end
end
