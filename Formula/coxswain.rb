class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.0/coxswain-terminal-v2.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0efd0776c1ae39be62d09472725a85d71232307c0f490067772aeae7334e0e5"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.0/coxswain-terminal-v2.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "96b0fb93138d16d136cc51696f5646e737d55368606e9364c8e3370244599d24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.0/coxswain-terminal-v2.28.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec1235c5dceb3620becf3c8d9c28d890c43fb7dfab6bcbc315c269406996964c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.28.0/coxswain-terminal-v2.28.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea0919f424f244185cb6cbb15d556e011b72adbe1cb18d7ac591dbb0a565211e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
