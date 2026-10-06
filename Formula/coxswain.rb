class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.2/coxswain-terminal-v2.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "2bbe0aa094b0e37e5f3f638fe6946e630193d3e9be928f2bf7c158eb289bff87"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.2/coxswain-terminal-v2.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "9bff4c6210152cee27c49c26a9ab817ecf6a05577a010a2ac808a470581a4863"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.2/coxswain-terminal-v2.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f0e9018289b47600beefedc3c72e0323b887732801ceccf0267ebdbb3a9364b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.2/coxswain-terminal-v2.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2b2b922606c38903ab2a71539a257d676faf31ab05c9c3cea345b5c0e5114439"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
