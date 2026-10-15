class Tillio < Formula
  desc "Submit and evaluate code contributions to Tillio from a local Git repository"
  homepage "https://tillio.ai"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.tillio.ai/cli/releases/0.2.2/tillio-darwin-arm64"
      sha256 "9b845295b1842bee11a1e8e789604c3a9a18c3ac236423e760560b33ad02b6ac"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.tillio.ai/cli/releases/0.2.2/tillio-linux-x86_64"
      sha256 "7d622126a48427000ccc84140bc8fdb656e19ea80207bc7a13a9a71538d754d5"
    end
  end

  def install
    binary = OS.mac? ? "tillio-darwin-arm64" : "tillio-linux-x86_64"
    bin.install binary => "tillio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tillio --version")
  end
end
