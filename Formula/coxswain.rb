class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.2/coxswain-terminal-v2.34.2-aarch64-apple-darwin.tar.gz"
      sha256 "170e96b620e33b3f41be919820cfcff75526c78a149364fe0ff0c21143bb4d7e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.2/coxswain-terminal-v2.34.2-x86_64-apple-darwin.tar.gz"
      sha256 "e16e317117c2999b003070646fd2cabaf8535096e1a19bd5dcf91e9b35217e22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.2/coxswain-terminal-v2.34.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "538da149203537356b473b3b5cb72cddea02f9ac06646ac9c674d7474e261045"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.34.2/coxswain-terminal-v2.34.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62aee587808606072d705f50a131a2418d6b636a3c573c5dadd0ba08026d4fc4"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
