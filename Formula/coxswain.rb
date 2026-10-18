class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.4/coxswain-terminal-v2.27.4-aarch64-apple-darwin.tar.gz"
      sha256 "38c2d950446785cf300f73eb5720a593ae5d838e4fa2cd1a17879d0204fc8732"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.4/coxswain-terminal-v2.27.4-x86_64-apple-darwin.tar.gz"
      sha256 "92dff6f86f44a8df3ebb454287651d1cd3eca7b108976e512d47b7c783aa8b0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.4/coxswain-terminal-v2.27.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07d6abcabab63771a575cb51e4d51c9699c23b61affbb142b3853069780bfa71"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.4/coxswain-terminal-v2.27.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6240e483ca086c693ae6f2fd70b73946f004072d0fdd34a1fe1dd01e3b3bfc55"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
