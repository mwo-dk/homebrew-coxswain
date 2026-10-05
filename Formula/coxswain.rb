class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.36.0/coxswain-terminal-v1.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "546c9cf4cd45d232c538c9cfe12cf90d2d1444135b3175f61e0fe4542cfeade4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.36.0/coxswain-terminal-v1.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "16dec0fba2ef056accf3b66cbc792ba808a06327cfd48971e0776347d7e4d643"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.36.0/coxswain-terminal-v1.36.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4d53dbb6a5f4f590f68fc826d3e69fb69907a6b13a966553b61039af10bf9330"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.36.0/coxswain-terminal-v1.36.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99eff585569b9293bf8ac437b8ae33d1699d9ede2ae678b2d009ceb5a6a00859"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
