class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.27.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.1/coxswain-terminal-v1.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "1d593b24b6222a9eb547885551b8924854bb54b7b277b41642889b6ad42538bd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.1/coxswain-terminal-v1.27.1-x86_64-apple-darwin.tar.gz"
      sha256 "79431640cdeefdf72e7a73eff8f73ddea02f96e4f333b7db944e85b611b0c73a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.1/coxswain-terminal-v1.27.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2ca5ce291479482e167aa82aae8370bce8a1986bf287ce5b94660897491cdec1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.1/coxswain-terminal-v1.27.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc897638d324862faa910c54145102288b18f23eb48f28c416ea4c865a66c401"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
