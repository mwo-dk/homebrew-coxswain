class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.15.0/coxswain-terminal-v1.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "94a6b31c165561217eb9aba53f29620a5003fc770fd233c01a5fb34341d030d7"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.15.0/coxswain-terminal-v1.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa1e3fdd2782a937fd31f6220543ed3c44249e50d51e3d6768cd8e6ec1d0dbb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.15.0/coxswain-terminal-v1.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95f5c55f5d8c19e45b1e270d607be22ce04824285d145a77eb85b3b11a21654a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.15.0/coxswain-terminal-v1.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f424fe9c8f5500152e6bc2f9f34cdf01b01f35764d037822d88eb2de4dedcbb7"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
