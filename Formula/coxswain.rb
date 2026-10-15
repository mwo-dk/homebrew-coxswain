class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.24.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.1/coxswain-terminal-v2.24.1-aarch64-apple-darwin.tar.gz"
      sha256 "519bcdb14fe4bf4663d5396e3bc61cc652616ee075a073e4d168a3751aa188e1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.1/coxswain-terminal-v2.24.1-x86_64-apple-darwin.tar.gz"
      sha256 "bcfdf96461b3189c708a27fa3471d4e072202f417b5221050ef7d5ad289f2dcc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.1/coxswain-terminal-v2.24.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0373b57bb845827cf97725f9d500d806fccb22239991e7c701e736cb22d6163"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.1/coxswain-terminal-v2.24.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4da3a17166ad843948c53299a5546dcd4313f055cc13d8bf0200517c762b9427"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
