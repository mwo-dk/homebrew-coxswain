class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.0/coxswain-terminal-v2.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "9f4f1dba7acf29960fb2847616fb9a207d10fdbe99a306e815740e969d78894e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.0/coxswain-terminal-v2.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "35e6db696ad97b0c42cdad30b94b669956e5b5936dffbe51e3731bc4d41a800d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.0/coxswain-terminal-v2.27.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cdff66210f72497d1e2233ef1c40d88b54616d3583b501843e034e002f4d568f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.0/coxswain-terminal-v2.27.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6db2a39994fe5ddd14834a5b2e18e40850f7bdff2da4254b5a052f471250c77c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
