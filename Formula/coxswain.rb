class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.6.0/coxswain-terminal-v2.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd35e5c22c4d027167d53b25db9f5f2d00a22ea08109d7f50838295c85e2c241"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.6.0/coxswain-terminal-v2.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f6104de99e670efed4042abd85645484a58ea0f37eb8dd62253566fd42fc0e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.6.0/coxswain-terminal-v2.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ea8b4605db9085ef8191b85a4d0a06e7b2066345db30b625fa12e9b153912f4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.6.0/coxswain-terminal-v2.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dee2cc95cb17653903f597c6460247ee581004054e39c54da16db4cdb6d3f2b2"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
