class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.0/coxswain-terminal-v1.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f8f9c5e3175f03e6a8cd488a8489cf74bdcc9b09d03de3b591558c65e88f411"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.0/coxswain-terminal-v1.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "4af9f17f0230c57f45a0015502a09a5ef6863704871c6a5c7503ff44be2b7a8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.0/coxswain-terminal-v1.29.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e713983b4af34c06628affa1a36aba916ed2d096f25053437970b3b84734e528"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.29.0/coxswain-terminal-v1.29.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "265b8cfcd7f4b8f80c6cf74983374791dbf6e591a9ae81c786a6127aa702e8f3"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
