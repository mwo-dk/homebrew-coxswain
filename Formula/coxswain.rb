class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.40.0/coxswain-terminal-v1.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "7bf80e656878b268c096e2d400364cb53993f0cd86df41346c6e8e0cefcf911f"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.40.0/coxswain-terminal-v1.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "f96cc7a2791b4d8bc107897720a43695bd15953061a61c16a5914d6f0b1c70e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.40.0/coxswain-terminal-v1.40.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "453cc2016f47c353afa069e70daf9e25bbfbcd58251c97d233ccbc4394fe2e51"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.40.0/coxswain-terminal-v1.40.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "16639e4e502b0c9d053af9329d39213c0a00c25819d9fb5c4ac6d5030e1b9690"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
