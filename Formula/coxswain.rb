class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.28.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.2/coxswain-terminal-v1.28.2-aarch64-apple-darwin.tar.gz"
      sha256 "b7c6573ae0d13c7e1d0e5ac0c1e536ccd854f721634ef61468b3d9caaf8f7de1"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.2/coxswain-terminal-v1.28.2-x86_64-apple-darwin.tar.gz"
      sha256 "7564cfbca1144f9ef49c25a912903d2c111a6d84680af1b1db71a87e3c50cb59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.2/coxswain-terminal-v1.28.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb468e0a32cb041a626af563445bf2ae0344b8b3c81d05f58a50f6e90ee6d1ce"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.28.2/coxswain-terminal-v1.28.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7b5dcd8ca95010c21d0efff78922f3d52968d37c07016c907dd20904512d9d7"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
