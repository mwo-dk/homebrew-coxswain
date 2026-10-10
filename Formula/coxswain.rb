class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.21.0/coxswain-terminal-v2.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "78be2a92f7513ab01da496246319a46a94639e0dec99c906589c253c2e7a198f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.21.0/coxswain-terminal-v2.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "7fe48a133209efc5c0b1eaaa5e074b6b9ef18eeba4f3f7f9412f652d56917074"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.21.0/coxswain-terminal-v2.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a234e049d8acdd3ab291230c4e4929ebb2535a9376915c35c7fcbf5659eff461"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.21.0/coxswain-terminal-v2.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be23d7ad7c23b67b4d7613188b5c27c32c7a24d63408d1136c9dc4c72bd8e583"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
