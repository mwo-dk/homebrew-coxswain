class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.0/coxswain-terminal-v1.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "bcb75ed354d060e41bfb3d0ecc5cffdf5c622ab97237dd273c0e324cddda2bdd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.0/coxswain-terminal-v1.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "4206383db6ef151d8d0d31f51c8a1345f40436bd25bbe86b30985c474b0d2b13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.0/coxswain-terminal-v1.30.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "167cf8e8e91a80148b08d09d45c4983ca52c654ee84f86d842d95ffc877a58d5"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.30.0/coxswain-terminal-v1.30.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aac18380913ebf0097782cf157d03f56b2994e6e1573aaabe0ec7f49355e1f42"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
