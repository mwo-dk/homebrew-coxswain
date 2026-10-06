class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.1/coxswain-terminal-v2.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "74eec2c044599b51f80942afc3a38c933959c43480621a34bb4e155e3a9f7978"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.1/coxswain-terminal-v2.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "26d2b7cc7679252a137e1e408b5427103ed90bf716ba9a504046ee8fcc1ff52b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.1/coxswain-terminal-v2.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a40a025446e64e5d38b55b28e578bfb959d4b3cadabd571e1d0c1668bf03e0e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.1.1/coxswain-terminal-v2.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a7a9920b74efe9d31833ff77d2639a716071a7a1a1bf808a759b5afae231932"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
