class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.0/coxswain-terminal-v1.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "c0522fdb4fa62d29fd199f622efcd716214aeb0e82e42b0b211b11fcdf3fffcd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.0/coxswain-terminal-v1.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "e50c5d084d484c1132cf5f71c2ad8f2f0f0a5936b19d4491aae8e5faf55f491c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.0/coxswain-terminal-v1.23.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6c762aa7e9267be722730271ad511fa1bff9300a8dc38a7a7f3b44d13c64f02"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.23.0/coxswain-terminal-v1.23.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bc023094125ec4774a8076fcd673c6aa332cf4471138faa7d0affd6a534df2c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
