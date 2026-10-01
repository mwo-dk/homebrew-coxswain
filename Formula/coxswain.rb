class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.24.0/coxswain-terminal-v1.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "154c9ae9dbb49cd6f21b2b1fe5c9ce4be619dd9d283426f561db32d61cde050c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.24.0/coxswain-terminal-v1.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "73865135057ef9cef2040d381f80ab57382aa7bac537af384b2344e486aa5937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.24.0/coxswain-terminal-v1.24.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "06c41d9649f28842af56c6b314d37d874c3da7312f713c8f4f7b466f1e0010f3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.24.0/coxswain-terminal-v1.24.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d380bdc952c6548d429b073a38f4da7bd5f3b901689e5d253debeff403b9cf38"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
