class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.38.0/coxswain-terminal-v1.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "35f90e9ae923d6484df94fe9102b9b2d715a89e54a865abb5ad04e1125abc33f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.38.0/coxswain-terminal-v1.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "040d02870e2a114ff7ced9d46fc9e36442cd5aff2c650339988d60202386dba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.38.0/coxswain-terminal-v1.38.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afedc5eae02eff9705da1e92fcf44a21121dbdfdc77ae67a8a5fd51ae06d5f0e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.38.0/coxswain-terminal-v1.38.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1563f402aaa12867b4516bf10d37fa81160894a69a279f9b41d7fff093809d90"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
