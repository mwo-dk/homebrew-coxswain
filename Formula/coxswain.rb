class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.10.0/coxswain-terminal-v1.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "851d305c503d14fc9dbaa6e705131d47255deafd61589028b7ba66e3fe42bb4b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.10.0/coxswain-terminal-v1.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "5da8b3026d0f895f1f641aca5a9c8610aee283f909791d86c59dc1b8777605c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.10.0/coxswain-terminal-v1.10.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05f735e46e7279898e1638e131215eff299a41139b01685a6861ffad8490be90"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.10.0/coxswain-terminal-v1.10.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "025ef7c7673c3face7b898670ec1b65a1f845a913bcdf65d6bf9be08c17cd6ec"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
