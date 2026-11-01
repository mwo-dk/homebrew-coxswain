class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.0/coxswain-terminal-v2.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "b7f4b1a39f30987ae19d50f40fdc62d3fac69afb0eaf132a32309945fb222885"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.0/coxswain-terminal-v2.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "8d1f2463cd8e8e6a24b66289e0f2009549d207c71826037c7172f129edbd5c7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.0/coxswain-terminal-v2.35.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "274ad6d3b192945b1f116162c04e36a013dfc8dc9190c8896c614c1eae60e482"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.35.0/coxswain-terminal-v2.35.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fcbb92847ffe61fc3d01a3ab9a5e0d95e32087b2a4684e3246b3fb7516bcb98c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
