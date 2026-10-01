class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.26.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.6/coxswain-terminal-v1.26.6-aarch64-apple-darwin.tar.gz"
      sha256 "b6547abfc6d5ec0dd5e70bae8e9f68300880bdf8a9e6b9031d5b46017508ab99"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.6/coxswain-terminal-v1.26.6-x86_64-apple-darwin.tar.gz"
      sha256 "1cca66303ac1149a746312019938a3a590257f137e5f93c7ed71d83314ab05c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.6/coxswain-terminal-v1.26.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e1a888682302f4d902441f5cf474293d9d4dc927d82ba52699c5f2ccc3274f1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.6/coxswain-terminal-v1.26.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe60026238f7ef746989302eb2cc15e3436e8f4a45aa5839e42f26f0311ff004"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
