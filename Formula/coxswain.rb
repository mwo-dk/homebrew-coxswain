class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.0/coxswain-terminal-v1.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "e80ae561a4e57f4ce5aa5e8cabe63220a4a9c3c329e33b90ad00066d46804c8d"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.0/coxswain-terminal-v1.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "08e36cd93fed270f3a4fd01f7eac1cba9fc20188f6a3fd840642c72dd9cb0c9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.0/coxswain-terminal-v1.22.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "035bfaa8b9619c68bd4fd6d8aa6ca875b83853f5fd2337b8210c5b215ab2c234"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.0/coxswain-terminal-v1.22.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e9cc94fcfb152062de158aac0672f23061b5ac155c09b24bd90916626a7a0a9"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
