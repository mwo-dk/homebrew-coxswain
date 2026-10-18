class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.3/coxswain-terminal-v2.27.3-aarch64-apple-darwin.tar.gz"
      sha256 "bbda6b51e3bed5e067dad0b5dc70452de954f0ced206e6ccb3a1a4e31799935f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.3/coxswain-terminal-v2.27.3-x86_64-apple-darwin.tar.gz"
      sha256 "af7902d184216679848936e5ab54984cf66b6b3cca0d0144fa04a5f8dd0cab15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.3/coxswain-terminal-v2.27.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a91f748976892dab794b77b858d7d1b4200f17fe72d184dbbbe1c70e9e06dc4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.3/coxswain-terminal-v2.27.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63ce55129d4b87d6e5908f7c1f5850a1d2b658d205c57dc8886247cf24ac3d0e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
