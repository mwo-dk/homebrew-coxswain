class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.17.0/coxswain-terminal-v2.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "383530673b55495dd2a2387eef8be8b70f888266af2520af6785a05d269951be"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.17.0/coxswain-terminal-v2.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "5e36fb2f2bee9fe67f2ed462d7766f40a390ad02eccc7bcdb2cc281ac1ad5f1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.17.0/coxswain-terminal-v2.17.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8fb4df263d1e58d891497aba511af021f9cd9fffd8ec9565f7cfa263a71c857d"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.17.0/coxswain-terminal-v2.17.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ddada9d000f53e06df8354a526cce8f6dcc97b13d33dbcbe890443767918b48"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
