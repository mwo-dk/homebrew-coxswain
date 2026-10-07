class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.11.0/coxswain-terminal-v2.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "8037407676fe62ac563a4aab401eb727c0781f0cabfa5a260b2958323f82b80f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.11.0/coxswain-terminal-v2.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1170720802c90c98c4d791c3a34b6ca38decffd04c2151dbd2b72625dd8f57a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.11.0/coxswain-terminal-v2.11.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "080667d856899402b4da98a2ae9908ac97eefec97603396379fa3caa3c2c2d22"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.11.0/coxswain-terminal-v2.11.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe3521c27a2ba4474d08cf8bdd87f523ef5b2438096771313daf84528dff54ab"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
