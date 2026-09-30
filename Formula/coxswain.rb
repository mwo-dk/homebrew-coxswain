class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.11.0/coxswain-terminal-v1.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a44fde8382545e33965fa64b4b6b5a01733854918e7fae37787b47529500304"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.11.0/coxswain-terminal-v1.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebe2a26bf0004e155d0d1c131526fa51bc58ab14c2f1eb7e64440439e08aa5ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.11.0/coxswain-terminal-v1.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3f88f5aaef7d214464d2a7638fbd72abc31f5dae0981d8315175c77ab23fc33"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.11.0/coxswain-terminal-v1.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fa1a89cffa1fa040afd14eae9256331c8bbd63e71ed19027d10b7be75d628e2"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
