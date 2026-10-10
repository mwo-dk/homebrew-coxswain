class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.20.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.3/coxswain-terminal-v2.20.3-aarch64-apple-darwin.tar.gz"
      sha256 "87e6ff4985af7d006ae3ea1e6784688e689a91875878b0ce63de7718eba69b20"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.3/coxswain-terminal-v2.20.3-x86_64-apple-darwin.tar.gz"
      sha256 "82769c40b0e8fd86f51a547516cf7a0ddef40da5ec5768f5dea42b1d3fad9ded"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.3/coxswain-terminal-v2.20.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d215f35803b8c7ff3ab5cf5f259cae23411ae9d644c778d6d40b55d246ffcbf7"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.3/coxswain-terminal-v2.20.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d9440cd1307ee29c410ae2db1085b5163202546ab5ff9afbee8d0b21e6817f1"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
