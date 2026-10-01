class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.26.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.2/coxswain-terminal-v1.26.2-aarch64-apple-darwin.tar.gz"
      sha256 "b51150f2247d0a66ed4c81ff4d08a3faea2dd5cad9ae9fda0aa56dbcb1743ce3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.2/coxswain-terminal-v1.26.2-x86_64-apple-darwin.tar.gz"
      sha256 "c6f3a4fec70f2d4d448e39090324e685b6526420602baa301ad6203c4e9a2d79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.2/coxswain-terminal-v1.26.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61c9d074c71db03b66ab15377a49ee45949a173b4c044e6bdfe189b977d3e8b2"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.2/coxswain-terminal-v1.26.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83cea0d3adb5efe58eeba90460c523125562a680567d523e7c7f086168b64d45"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
