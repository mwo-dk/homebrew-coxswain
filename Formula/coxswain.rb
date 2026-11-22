class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.1/coxswain-terminal-v2.37.1-aarch64-apple-darwin.tar.gz"
      sha256 "7c88157be1254c02a263df7e24077d127bf265380f30a674e0c9f3d5b547c9cc"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.1/coxswain-terminal-v2.37.1-x86_64-apple-darwin.tar.gz"
      sha256 "edb4feeeb9059b7db72cda320cc3ea113b203dab043831e387e0c70e3c5952b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.1/coxswain-terminal-v2.37.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73e6d1b644ec087484796d94295098e6d64d35b2b2ea40dee026c07d70fbe7f6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.37.1/coxswain-terminal-v2.37.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6ec6fc92552439fb181a0568c385413c34e6d04c7fa658ca297e68388759a2a"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
