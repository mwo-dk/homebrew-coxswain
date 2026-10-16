class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.24.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.4/coxswain-terminal-v2.24.4-aarch64-apple-darwin.tar.gz"
      sha256 "8c2dc6912e0396210a464505e0b5c34d89d7cb3251f1f991ecbe6e2c47411546"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.4/coxswain-terminal-v2.24.4-x86_64-apple-darwin.tar.gz"
      sha256 "81460933ce6b22c5ec5e5553d2091930993dc781f99af41f35b52c76cda8bdb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.4/coxswain-terminal-v2.24.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f015eb92a141171dc0723cb658abc17051775a96b68af890ce172bc5eff40d9c"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.24.4/coxswain-terminal-v2.24.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6067254328fe2996e2613f31513d6a0c1ae83c98e1f2c286126db72d83fec94e"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
