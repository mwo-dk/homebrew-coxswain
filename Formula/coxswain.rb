class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.2.0/coxswain-terminal-v2.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "0458519501c0c56042be3916c8b176bbdf5ec417e3891784513f4f2e79554988"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.2.0/coxswain-terminal-v2.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a74cac0dfb96021bef4009e3c62b98575042b787213893f4e099070b4b509004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.2.0/coxswain-terminal-v2.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f8a8946964feda3345c518e03c6fa410e8dc273305489ed82d8e330f720d6c6"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.2.0/coxswain-terminal-v2.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d82085ec0ca46ccba80b00f97907ff92e4e8bab4c8751f3d50b3acf0cad358fe"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
