class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.0/coxswain-terminal-v2.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "bdc9643db5988812fc9b1201fed981dc8197407e579ef94e5c2cb07143c51c17"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.0/coxswain-terminal-v2.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "97b397ea03d6da5ca32f8cde34d672e1f493ed5cbcc5481c05db5f9c6ced836f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.0/coxswain-terminal-v2.22.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6ee6a8db1045d98fea2118a31a38abe11d36e33147c9aa52910f418d9c952e7"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.0/coxswain-terminal-v2.22.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba412cc37cf2edb00184c18ced378f5c2e3d376fd610063a8e32bebae2654d7b"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
