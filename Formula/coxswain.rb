class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.33.1/coxswain-terminal-v2.33.1-aarch64-apple-darwin.tar.gz"
      sha256 "fca0fee672551de8e1cbe62cf0e3b53d95eeb767c82875d171987b1533e62b13"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.33.1/coxswain-terminal-v2.33.1-x86_64-apple-darwin.tar.gz"
      sha256 "ab4d5e7e29eb7dedfa5109c87f26b97fe75a50c7f10c37d5fc05ba1c3cdd9fe2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.33.1/coxswain-terminal-v2.33.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10a0c9abce6a3e0d43075fe8ae1761db9642e8c70109c484f60721480275ca6a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.33.1/coxswain-terminal-v2.33.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31cf1e84d6846d780ef307eff384346315b28fcf485e33749422870b87d5b3e6"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
