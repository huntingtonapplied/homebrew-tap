class Boltzmann < Formula
  desc "Drive Boltzmann multiphysics simulations, projects, and jobs from the terminal"
  homepage "https://boltzmann.app"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.boltzmann.app/cli/releases/1.0.2/boltzmann-darwin-arm64"
      sha256 "89cd3bce93d77f48514199fec12a9d5e5a8a374989d07ba20e0740c6bc7375d4"
    end
  end

  on_linux do
    on_intel do
      url "https://downloads.boltzmann.app/cli/releases/1.0.2/boltzmann-linux-x86_64"
      sha256 "14ca688f7c70173b5cd4e05a25759fe5d3c437928ecae85e80fbf345e2bf37ab"
    end
  end

  def install
    binary = OS.mac? ? "boltzmann-darwin-arm64" : "boltzmann-linux-x86_64"
    bin.install binary => "boltzmann"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/boltzmann --version")
  end
end
