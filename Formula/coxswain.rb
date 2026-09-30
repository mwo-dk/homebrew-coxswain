class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.14.0/coxswain-terminal-v1.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1b5c17fb04cec4e697170319a26799b7b0849c84b5e273926e7ed05111f8c3e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.14.0/coxswain-terminal-v1.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "153cfd65e52c29629c88e3e09b7333accd4d0af1d9d60c53d8500aaf0c2cbe97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.14.0/coxswain-terminal-v1.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a630de32e431e74b04dc7d9661942b2cfda7db167b7a082edb1cf9877269c5ce"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.14.0/coxswain-terminal-v1.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d1214279799549dff02c5c080837a5827681d2f60bdd325233d9d65a277efbeb"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
