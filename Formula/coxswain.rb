class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.30.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.2/coxswain-terminal-v1.30.2-aarch64-apple-darwin.tar.gz"
      sha256 "834a967e8626c697e083e9de1a59f44626060d9fd2f9825088d0c8c6e46121e4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.2/coxswain-terminal-v1.30.2-x86_64-apple-darwin.tar.gz"
      sha256 "0d343e8a6fd9080492652d5edb0ae21f5cecf63c55361eb6eee12fdc825ea266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.2/coxswain-terminal-v1.30.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7eefa55a0d876c346aea9c442a29d5dd0470ab2d083de41c38a26f5bfe38e71a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.2/coxswain-terminal-v1.30.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f14950589432967731911f3f0da9226e2ec03f12904a377bb5296d6960550bd"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
