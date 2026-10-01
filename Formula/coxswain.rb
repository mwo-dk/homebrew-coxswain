class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.22.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.2/coxswain-terminal-v1.22.2-aarch64-apple-darwin.tar.gz"
      sha256 "a1421d92cbc9d477f55350e0f0c41a889d9e1bdbfa450c6da137aa199ca79d9a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.2/coxswain-terminal-v1.22.2-x86_64-apple-darwin.tar.gz"
      sha256 "6be4080b9860ef8aea5bae99c6c7e7221a6610ed106a8bea76189139a54b6448"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.2/coxswain-terminal-v1.22.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8430ddf68cc1cef825f00d6e0f1faf204dec612d1aa07b070edccd2dded5d1f4"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.22.2/coxswain-terminal-v1.22.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "982cebc74272fa68adfd1550fd1bd292be5dc55faa5dbcd14684bf58c63c6078"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
