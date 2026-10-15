class Sentinel < Formula
  desc "Scan codebases for corruption from the terminal, CI, and pre-commit hooks"
  homepage "https://sentinelscanner.com"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.sentinelscanner.com/cli/releases/0.1.4/sentinel-darwin-arm64"
      sha256 "2c281d7232d7f29f7d1152e181a0b4f899237b03b17a986f83bad81507dec38a"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.sentinelscanner.com/cli/releases/0.1.4/sentinel-linux-x86_64"
      sha256 "98a4aaf4447890deaef07577f4b383e7c1dc7e7b5d1bbffd93c5c9e03c132f7d"
    end
  end

  def install
    binary = OS.mac? ? "sentinel-darwin-arm64" : "sentinel-linux-x86_64"
    bin.install binary => "sentinel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentinel --version")
  end
end
