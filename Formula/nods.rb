class Nods < Formula
  desc "Manage NODS terminal workspace configs and sessions from the terminal"
  homepage "https://nods.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.nods.dev/cli/releases/0.1.1/nods-darwin-arm64"
      sha256 "e8ac494ec82548e2fbc805b5c093461baced1859faed0f4447e8169cfcc9a258"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.nods.dev/cli/releases/0.1.1/nods-linux-x86_64"
      sha256 "020cb967a20cce29c9d540445e9a949b656a8a27fc5933f79c3a1f79e80d1dde"
    end
  end

  def install
    binary = OS.mac? ? "nods-darwin-arm64" : "nods-linux-x86_64"
    bin.install binary => "nods"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nods --version")
  end
end
