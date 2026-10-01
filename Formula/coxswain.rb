class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.26.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.4/coxswain-terminal-v1.26.4-aarch64-apple-darwin.tar.gz"
      sha256 "d6ae38cb0c4a7c57d5da0fdc8c80b6512c0da3ba392279c3fb864bc4b8416c3e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.4/coxswain-terminal-v1.26.4-x86_64-apple-darwin.tar.gz"
      sha256 "5ac23786cee32088440f60cae4ea62cd6e05455bf971f1e4fdf4e6dddc79181a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.4/coxswain-terminal-v1.26.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fe9b0ed49f3ff850328124524abdc2c2a416305f332209c7c41d7e41b8a6fb15"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.4/coxswain-terminal-v1.26.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8ef5dcf3e93015e5f5106e72dc6ed4008497046da5cc1124c904825c5ddf150"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
