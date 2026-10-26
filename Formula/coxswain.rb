class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.1/coxswain-terminal-v2.34.1-aarch64-apple-darwin.tar.gz"
      sha256 "e1b35fd25d0f2c09a4d5840abbf561c6d03dfe77fbe507734f36242a1d36656f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.1/coxswain-terminal-v2.34.1-x86_64-apple-darwin.tar.gz"
      sha256 "bcf466c2cc38fe45a6d079276bf5f54eb6ed4afe99347e64b0dc5398eaf270d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.1/coxswain-terminal-v2.34.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9405e42ea8121ec677b807f425443a945fde4be9e5902b458e99925a6f6b6778"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.1/coxswain-terminal-v2.34.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67fdaec32f77b2d0e21676b5ce9d95d16f570007d4a2402a12c489b15f52b610"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
