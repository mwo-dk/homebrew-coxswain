class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.28.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.3/coxswain-terminal-v1.28.3-aarch64-apple-darwin.tar.gz"
      sha256 "105007107e695093eeadae5892f279daa37ef3b459be0dfc2a606ac1730d0e10"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.3/coxswain-terminal-v1.28.3-x86_64-apple-darwin.tar.gz"
      sha256 "c2d1656ead43863b286857cfa23701490dc0acecaeacf30c2b3b9d69ea2afe76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.3/coxswain-terminal-v1.28.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a411223dc98ed1b4c3d26596565dee7b87a3f35e909bba455b2cdf137eb85f90"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.3/coxswain-terminal-v1.28.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec67761f6f51d47e7ce1c470ee174b317a76f39cd1321ee4722c628f66d7dcf7"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
