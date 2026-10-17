class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.0/coxswain-terminal-v2.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "35f5094897697a8a8daae5fc2aa555c4ca9f92907a4a25ea33967061bed5fa43"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.0/coxswain-terminal-v2.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c381a485f7716aff3b276c43e83ee2b071a3570146d7278d1d9d8101aaab8dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.0/coxswain-terminal-v2.26.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "65793e22a4c31a8bd878933a54fa0f587fe39db95af82d492b49ca700de7d291"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.26.0/coxswain-terminal-v2.26.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5184174b95f915d8c8498d25326e9e0a9b4a2c05ba770db005b1643fd33134c6"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
