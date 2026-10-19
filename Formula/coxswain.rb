class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.31.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.5/coxswain-terminal-v2.31.5-aarch64-apple-darwin.tar.gz"
      sha256 "a6d88318569c44f949893bdd519cedd056ec6425b59b0c6be655b86f7d26e62e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.5/coxswain-terminal-v2.31.5-x86_64-apple-darwin.tar.gz"
      sha256 "a874bc8593f025a1a528a0dd60e2c932549450f5d67588ad314aba100d41e3a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.5/coxswain-terminal-v2.31.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2d2fec24868e5cfca5d244b16768007c8c7d929f5882a9df1e20b9eeadc892c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.31.5/coxswain-terminal-v2.31.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "136452d65d38e8d50d9c6b9d9c58e3dad4d08433b0b7f21782836ea2dfd71e90"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
