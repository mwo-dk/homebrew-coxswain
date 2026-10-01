class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.26.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.3/coxswain-terminal-v1.26.3-aarch64-apple-darwin.tar.gz"
      sha256 "77a6ebe3dfb2fa71c8ce119d1a45981fa59d722cb025a2bfa328db3d4440c7fd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.3/coxswain-terminal-v1.26.3-x86_64-apple-darwin.tar.gz"
      sha256 "08e4dc27f4a41db82a2f70190d2811529ccd24e5a9372503887458085ea89baf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.3/coxswain-terminal-v1.26.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b9477e9d74058b7defca3ff18a798e6c8cfe4696f2f975235c13c942f8dc6964"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.3/coxswain-terminal-v1.26.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0fe259d0d9062bea36745c064537b97a8b49e36009b46bad6732ce5453e7b50"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
