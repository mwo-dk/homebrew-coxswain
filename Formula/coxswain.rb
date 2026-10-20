class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.1/coxswain-terminal-v2.32.1-aarch64-apple-darwin.tar.gz"
      sha256 "adeca2691c383babf9ff5b5543342a641b1c64a9e903a29fbe716f0ab64c05a6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.1/coxswain-terminal-v2.32.1-x86_64-apple-darwin.tar.gz"
      sha256 "f4855b00d117bae6f5e733e6abbaef9ee60e217ad9fb7069ee515ea1961175dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.1/coxswain-terminal-v2.32.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d21347d51c44c3168f5835448445ee3d2e85f570cc5728b17e93990feb306764"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.32.1/coxswain-terminal-v2.32.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "71e92c98a1c8a9ba2812bbeda3c8b1f4db406d4f24dee4cf4d89baf229176035"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
