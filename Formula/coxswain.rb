class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.1/coxswain-terminal-v1.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "4a018989f99abdf33d4f3148865861c5624393dde719c1c549bfb7541b5eaaa2"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.1/coxswain-terminal-v1.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "4914a80de5b28ee5c352a3723afe9e187c2d931eb3c3f477ee8c221df24da960"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.1/coxswain-terminal-v1.4.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fbb11a62f19702d57a22f723734a252e10617e2c052eca9b4d5a28abe53da42a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.1/coxswain-terminal-v1.4.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29b862cc56793b79f46bb505ec91828642cd78f37233101375bebc8da1c4b23f"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
