class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.36.0/coxswain-terminal-v2.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "377625afcdc13a6036ad58bd76d229db316ed7bbff36858caaf8b2fe21521e18"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.36.0/coxswain-terminal-v2.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "c95c4e0354f465c4f7331354b32b43f021fd9416e19e78ef01fc1fcc5b18aca9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.36.0/coxswain-terminal-v2.36.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "726f2ae7acf50d4d076583fd628eaa711cc7a2ee837729d815594c508b38a0f8"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.36.0/coxswain-terminal-v2.36.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39b26aada999e06ebc2db5b3577ff531dc8829d72a69e4881a21d291816f7792"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
