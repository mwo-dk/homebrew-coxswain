class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.3.0/coxswain-terminal-v2.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "7e8c66a39d1a8c38d0d79209e1d150a0fed10d5366d5797afb115c235f5a2bbd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.3.0/coxswain-terminal-v2.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "156eea14753d11122582a2667eda4834cdf2c849dde933f98d2ce511344aa660"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.3.0/coxswain-terminal-v2.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16fa3e516a3801d96121cbe61458e981d4e797db655f5969b8d4b4fbf65bf5e6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.3.0/coxswain-terminal-v2.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8af0802d11004e81dd1ee6650d622f9938e96273c64c1641157fa04b39c1dffc"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
