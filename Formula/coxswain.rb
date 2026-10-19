class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.30.0/coxswain-terminal-v2.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a1b9346a76cf27b41050cc6cd88396b1322f653d3a90f58c91970135991f4f5"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.30.0/coxswain-terminal-v2.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c1fcf44b56c241e78392cc64feafa50b00f77bbf75addeb4175e40a071cad01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.30.0/coxswain-terminal-v2.30.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fce74114c61fd14219bfe6c1e3d173d6aa0beeba143797ab2d970e33a1cf378"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.30.0/coxswain-terminal-v2.30.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5dcc69c340060ea2bcaf214f695f98701b43218b95f87134c70337cdf42bf23a"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
