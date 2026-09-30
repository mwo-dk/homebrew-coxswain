class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.6.0/coxswain-terminal-v1.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "df1b53231d42fa5f51cdda3734d2811b05a34ed0bdb0b7d7b2ab51bea7b8649e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.6.0/coxswain-terminal-v1.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "47c1e57e31a28bf5b9dc250e187c3f053f85aa1bdd2abbe1624bf6f9b322b165"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.6.0/coxswain-terminal-v1.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21dbb52cdbce6f564e9e02963cde818afb0f525580c7d8a12e1915182c200c43"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.6.0/coxswain-terminal-v1.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b4117b03aa5d6bf9b563465f2054c7b0c1a2d876c3eb6e47fe4ef8769a12da8"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
