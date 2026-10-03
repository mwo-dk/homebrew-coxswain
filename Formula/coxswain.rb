class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.0/coxswain-terminal-v1.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "1855b1c26fe19790121a839851c20bc20328303f52dd76be509cda0b47e64bfd"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.0/coxswain-terminal-v1.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e16be7cd12650b98e7ba1db711c460a06c7947fae17228681906d090fb127b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.0/coxswain-terminal-v1.28.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60bfb42c7c4b0927f1fb61e10f24f2a6b2e375ab01f6f85d06521ea162c33de1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.0/coxswain-terminal-v1.28.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eab8fe50888c757117f500e1d9ef8c072165af379858f1f949d8976f90a432da"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
