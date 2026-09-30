class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.1/coxswain-terminal-v1.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "1c969e99b9ac683676564bac5156def62904f86d7860731cabc41be8bd2d1a4a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.1/coxswain-terminal-v1.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "664c770a4db4489136a0e839f0c118f29227c87d344269b369ccc5b931a2b0ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.1/coxswain-terminal-v1.22.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aff821e0099652e05393869751bb6622143951c957f7af8e820231b2e233f190"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.1/coxswain-terminal-v1.22.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9f930ce1dc96fedc11af36053dfae478e98702a54c7f019cf8fec9a3d4825da"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
