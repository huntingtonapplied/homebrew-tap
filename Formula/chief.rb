class Chief < Formula
  desc "Manage Chief smart card organizations, applets, and releases from the terminal"
  homepage "https://badgechief.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.badgechief.com/cli/releases/0.1.3/chief-darwin-arm64"
      sha256 "918ba66d5bc172235276f6566f92cce87672313c7a5de146897cfe38bdd00f4c"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.badgechief.com/cli/releases/0.1.3/chief-linux-x86_64"
      sha256 "6553daf2165f88adfb666db72dba1c0780cda2f952d0bde598092802567e6c48"
    end
  end

  def install
    binary = OS.mac? ? "chief-darwin-arm64" : "chief-linux-x86_64"
    bin.install binary => "chief"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chief --version")
  end
end
