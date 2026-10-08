class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.15.0/coxswain-terminal-v2.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "8ff351cdcc82986e81bbe0045498f0ba1380c424106e2e6d865b68d823297b85"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.15.0/coxswain-terminal-v2.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8952b4b61f961d2f1091b6794d6520890dcd13a21b832365cc78a164fceb3f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.15.0/coxswain-terminal-v2.15.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "118313b42f70badd1c72949a3a78f941d35150a6990ebd6e570459ed59582807"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.15.0/coxswain-terminal-v2.15.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb09d02f91db3335318282cdcef71cd914250584ff69ff6c295a7ef243eeb63f"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
