class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.24.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.3/coxswain-terminal-v2.24.3-aarch64-apple-darwin.tar.gz"
      sha256 "3f53fe98731e7c5b4331427fff1239e1728c581e442fd8888c08108ee3346fca"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.3/coxswain-terminal-v2.24.3-x86_64-apple-darwin.tar.gz"
      sha256 "9c2f271b10ff9a7b156827fb70edccb542f04ad27f1c6ed7245d83d604e1a7ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.3/coxswain-terminal-v2.24.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10b9a02020929b80394003800f321c48a1f3e593e12d53a6484cc85855ea34a9"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.3/coxswain-terminal-v2.24.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "075291bac4f546c6726225899d8180b4178ed2458a6e1264d4f049c9d533fdd5"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
