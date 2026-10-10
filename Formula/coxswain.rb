class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.20.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.4/coxswain-terminal-v2.20.4-aarch64-apple-darwin.tar.gz"
      sha256 "66ccae117e28c7c86e71e16e0640d8deaa17381640a1f8d170d424d6174f1b48"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.4/coxswain-terminal-v2.20.4-x86_64-apple-darwin.tar.gz"
      sha256 "b3b946d15dbf09d8fefa0495768534649f4c7fe52abc59d999c8a28183b95e76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.4/coxswain-terminal-v2.20.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34fac918e282ba4a43d773b62decda5857b67f906e552158363bf77267abb690"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.20.4/coxswain-terminal-v2.20.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a025e09b549f11cb977319c71777d10ece13cbc5558d10a2bcec60c99856297"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
