class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.1/coxswain-terminal-v2.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "cc569f3fb254bb13fefc47869f693a857464d3c0a1c51a08008291df52716a93"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.1/coxswain-terminal-v2.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "6e13ae1a4611239af14710a293bd82da9c496098b82b196b49180440e8379853"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.1/coxswain-terminal-v2.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b29bf7d8958227436cb5af3cd2f5432bdf7122e25f2cbd9380a9c649cc00097"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.8.1/coxswain-terminal-v2.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e424749b5c8910b56f2e448746ebe022fb3176db5862839c1c311b8cc589be32"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
