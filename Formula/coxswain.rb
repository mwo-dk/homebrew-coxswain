class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.2/coxswain-terminal-v2.27.2-aarch64-apple-darwin.tar.gz"
      sha256 "1b6e74ecfaa8f2ca00005622fc8af14e209414b28a0324877152ad6c8fb700fb"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.2/coxswain-terminal-v2.27.2-x86_64-apple-darwin.tar.gz"
      sha256 "121c93bd0d5488c8434f1cdda26678821381c451858ae60ba75ffe23418d78f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.2/coxswain-terminal-v2.27.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a67eb9998be874c46286fdd4d8118164e6fc99440986f3f1dc8293106003aa6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.2/coxswain-terminal-v2.27.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0606eb31dbae5f81768e4e993c193a1addfe79643c9014d1ca12133fc27b0241"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
