class Tea < Formula
  desc "Control the Tea multi-livestream intelligence platform from the terminal"
  homepage "https://goodtea.world"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.goodtea.world/cli/releases/0.1.1/tea-darwin-arm64"
      sha256 "ce0c29ba60fad27e3a85c1ac0e937367157fc11706332f7b3f4ef43b90a7cc72"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.goodtea.world/cli/releases/0.1.1/tea-linux-x86_64"
      sha256 "703fb97e59b4e0371ac160839a74175fe508312e7f4776644c1d5e8f911f321c"
    end
  end

  def install
    binary = OS.mac? ? "tea-darwin-arm64" : "tea-linux-x86_64"
    bin.install binary => "tea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tea --version")
  end
end
