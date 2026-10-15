class Fasci < Formula
  desc "Manage FASCI civic engagement campaigns, boosts, and subscriptions"
  homepage "https://fasci.app"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.fasci.app/cli/releases/0.1.1/fasci-darwin-arm64"
      sha256 "e584dea402a2dbe746310751174095b5143fa06f7c514b39d8c60e583756122f"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.fasci.app/cli/releases/0.1.1/fasci-linux-x86_64"
      sha256 "d807350f0aa84e2762e534ee398597e1da095036ba72009f725e0d30f3d9030a"
    end
  end

  def install
    binary = OS.mac? ? "fasci-darwin-arm64" : "fasci-linux-x86_64"
    bin.install binary => "fasci"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fasci --version")
  end
end
