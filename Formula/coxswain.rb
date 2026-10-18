class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.27.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.8/coxswain-terminal-v2.27.8-aarch64-apple-darwin.tar.gz"
      sha256 "0f03623c9653fbf4a9c89839b80fac79a4d1cbcc4bcc9cba5df0a0b73f19b5e8"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.8/coxswain-terminal-v2.27.8-x86_64-apple-darwin.tar.gz"
      sha256 "641718a7f3cc6ec6a365b6f9c0d0c81365383d564d38c55045b85d23755ea788"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.8/coxswain-terminal-v2.27.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8cf2b7f74e94ca4198a50394885701617e60ba1d4e58e765643a0a66e2cea64"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.27.8/coxswain-terminal-v2.27.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17775650db9d778763e7fc210413db841e1ea47d150f02ded3f2a626d61a70bd"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
