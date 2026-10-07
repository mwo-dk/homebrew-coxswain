class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.14.0/coxswain-terminal-v2.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "a44615c787a33b0f1f9f4b9934cd711ebc620dcc004c12582e3e077ac47cb4bf"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.14.0/coxswain-terminal-v2.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f55dcdbbfe6bce5ff218e66f64a1c915bc4a127acb453c35327c65fe6c4bb89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.14.0/coxswain-terminal-v2.14.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa90403854796418d2e1cd0cbf8558cb59caad1df260d5e075e128b54886b945"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.14.0/coxswain-terminal-v2.14.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1b564a9e4d60df845d1038477eb2dd017371a0dd583af5fbb9c03033777bfea"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
