class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.1/coxswain-terminal-v2.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "8f95520cbfd15cce1d69e4502c6bb072897cde571b71d97421a4f062a3b897ba"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.1/coxswain-terminal-v2.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "4457bd44711e3996cdfac0c7f752d8c93423069527d87b87554508b266797563"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.1/coxswain-terminal-v2.23.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bde50b976a465c4e6f4315168763be1d18f7972a8376560327c9038603abda72"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.23.1/coxswain-terminal-v2.23.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2074315bbc0328abc604bd3968f3641dcbe1196f0f7c906a4b44fad615169493"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
