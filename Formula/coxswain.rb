class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.34.0/coxswain-terminal-v1.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "f64d450635553d75ee53b1ce577d2809e4855f8513a4af5e0020232cd2759dde"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.34.0/coxswain-terminal-v1.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "a927a7c977a26b5a3f31b3f58e6f1ef04a77a18bee1c69bf11cf9d83ddb5f7e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.34.0/coxswain-terminal-v1.34.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8aae0f944ccb2a3a6b167a32f120146ecc4cb72efe6a6c33b495a29c3ce34313"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.34.0/coxswain-terminal-v1.34.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "37171ffb1e3f0628f412bfa72542e4def0dbaf7b1abba5bdf11c678767cea09e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
