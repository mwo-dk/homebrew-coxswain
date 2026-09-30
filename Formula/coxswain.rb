class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.7.0/coxswain-terminal-v1.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "ddb2e80dd4ccdc1187fc70c15140c332a947011c24dfb027beaaaced64887e5f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.7.0/coxswain-terminal-v1.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "19abfc121e4113bc088fd3701c50ae3eb2220b0b48775fc4a153298b34a48627"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.7.0/coxswain-terminal-v1.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e707b77d929201dbd1161a7c227674707715ac5b306742dcc26c3ad5987c504"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.7.0/coxswain-terminal-v1.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07d48dcfb01d378950bc79822eabffbffebe55d9bc1c5bfc384e79c8d832f570"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
