class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.20.0/coxswain-terminal-v1.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "7dd75f64a305907b910c598950df156769cf15705cb42db18297ecf6dcb37573"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.20.0/coxswain-terminal-v1.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "6b4a60682cbf14d3c0e47b768ed79e26bde130fe523bb0b896c1c6164e1eec65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.20.0/coxswain-terminal-v1.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c614c4393c00132f441356ce56e4fdebd930c27b8747a19505532aaa6f28387b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.20.0/coxswain-terminal-v1.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b1d22100f1ce73ddeec0332e1186a36357b612d511824e336a4376113dc680c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
