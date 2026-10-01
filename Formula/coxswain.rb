class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.0/coxswain-terminal-v1.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "875485a39470798f496432e541e2fbe95c1931984aba92f6b93ff06a0324164a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.0/coxswain-terminal-v1.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "031133af7edcbe9b8f33b86701f0aac8fc7bcc4787abfb1fa7da85079c9d9265"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.0/coxswain-terminal-v1.27.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "15d8008ac153a738c78b83c775ac1824662fcd411167d7dab5e1826b1f6741f0"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.0/coxswain-terminal-v1.27.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d33141f3bc8955aa9fbccc170dbc09af43d5d112b59c8524ca2824f509343d0e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
