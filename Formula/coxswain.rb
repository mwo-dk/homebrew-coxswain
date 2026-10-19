class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.0/coxswain-terminal-v2.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "fe61813ff1af068975931d31dd584ee44842c545a087afdc01e0738c301a23de"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.0/coxswain-terminal-v2.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "197e5f2b5d3304642a20ce6bf440fe93e8d6c0061bf2262bdd8cce773c021900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.0/coxswain-terminal-v2.31.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f03ddaeea1d6043034ab3c36659ba4c80ff5a3ce027e4415da2b813ecb3e0d1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.0/coxswain-terminal-v2.31.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "125284f9f18f099735526a9f0ef96987e9024229510097c04c7c0b72d29d810d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
