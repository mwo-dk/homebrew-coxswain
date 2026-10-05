class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.31.0/coxswain-terminal-v1.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7c673f2547938b45b965a98f9d0a6f462f11ed59f82865acaa803e9c48e7747"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.31.0/coxswain-terminal-v1.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "644c2d67fedecd6c655377f2f2f18dd07ffeb334b24ad15e307fa30f9b5454c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.31.0/coxswain-terminal-v1.31.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3911759914b922e1fe29a0f1fb8af5dee0f636a4765f2c8ab2099d3073f5789a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.31.0/coxswain-terminal-v1.31.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e838637e34b77d5193ec5a1f6e76fecb82c7c3fe584c2bc34703467961e9335"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
