class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.0/coxswain-terminal-v1.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "013d09b84a71dc6f494ceb84c7293255b3302205d8bba1c933f19987c44a8d54"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.0/coxswain-terminal-v1.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "2daeeca4838ba9cdba33d4176eee16604600caf9ad1b6ee936d19bf8c01c3726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.0/coxswain-terminal-v1.25.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c2c17aee939a4d4549c6dff121ef5398e009da0e90e7f70e7dd4b54eb17af87e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.25.0/coxswain-terminal-v1.25.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2b9b4df4163b3d3808bd53de9b5052a6f17c25fb3173aca68ccf3e345938c06"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
