class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.22.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.1/coxswain-terminal-v2.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "2d4c6619189b846986103054572dd1f3a5c449dca0896f42ac3dc4f39368899e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.1/coxswain-terminal-v2.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "18360662f4f37e032f094bc8f7f64415f1b4be294ce4f0d54ec47058f8a330bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.1/coxswain-terminal-v2.22.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3033b2456309280157942fdadd19069e4104c19029ce456901eead21e523fa24"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.22.1/coxswain-terminal-v2.22.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46096c5f84c1e1009ddc9ed858b39bb3cda7040e9821e38e1ff33badfeb2ae66"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
