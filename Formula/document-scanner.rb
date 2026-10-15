class DocumentScanner < Formula
  desc "Command-line client for the Document Scanner document processing API"
  homepage "https://documentscanner.app"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.documentscanner.app/cli/releases/0.1.2/document-scanner-darwin-arm64"
      sha256 "09930ce4acde43997a541de5e9bc4e54eb892359cc62d996b61e0f277d0cf59b"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.documentscanner.app/cli/releases/0.1.2/document-scanner-linux-x86_64"
      sha256 "1af446b3ed0561a7a0164c6301edff463b6ab21e40f8f590b9ce1274918b1ac0"
    end
  end

  def install
    binary = OS.mac? ? "document-scanner-darwin-arm64" : "document-scanner-linux-x86_64"
    bin.install binary => "document-scanner"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/document-scanner --version")
  end
end
