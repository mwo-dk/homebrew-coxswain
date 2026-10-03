class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.28.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.1/coxswain-terminal-v1.28.1-aarch64-apple-darwin.tar.gz"
      sha256 "16db334ae16ac826efea29f92204143daab58715ec3c981ebf6e59101c7fbe2d"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.1/coxswain-terminal-v1.28.1-x86_64-apple-darwin.tar.gz"
      sha256 "0a2bee46b68bb14c1f7aa98e193104bafdf41a10db5e911ea8448b578d748f6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.1/coxswain-terminal-v1.28.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a1cc41caf5cc1c3ab97fd73b30b99784c836f4e2ba8dd6131abebbe886776ef"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.1/coxswain-terminal-v1.28.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b897761f55bf7a4e88465fe3975e4d66b9f254d83dfb21b7e399d52ba6a554d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
