class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.0/coxswain-terminal-v2.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "2a23c7076b4e807e897a16ec3fa032a6c0a7ddba1cbb4035c7b264280ef435f2"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.0/coxswain-terminal-v2.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac4d663049317cb2ed424a1557eee1a41c6b493617c303e9e05fd0c889fd7cb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.0/coxswain-terminal-v2.24.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c480ad67e94f0b47b0c279e3e7db01bf71184ef143f85aa4935fc9ad91049a66"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.0/coxswain-terminal-v2.24.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc4c0a6a1449f85c203776110d048777bc00dc9b1b51f7509df8329b3bece3c0"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
