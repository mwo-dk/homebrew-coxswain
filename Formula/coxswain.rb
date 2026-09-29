class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.1/coxswain-terminal-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "c02996fe51352f8da99ca1c6f53b1ddf62e25ffd1ed4b294edc3588659f42832"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.1/coxswain-terminal-v1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "7307936abba1942986463de308604c521f0f83d9029c61f6be5d2843392bcd34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.1/coxswain-terminal-v1.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8c4d766d684b3d06a7da14337fb573ff843a9409cbd2b337e05842bf1c6678a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.3.1/coxswain-terminal-v1.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b10d8e211f3ce5377e3cc946d04ee5201c6d9494b9f56ce7549e0a05802097c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
