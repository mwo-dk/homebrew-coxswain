class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.1/coxswain-terminal-v1.26.1-aarch64-apple-darwin.tar.gz"
      sha256 "3b6c7cd35ecf83b4b8c2ba941562961f852dc79e7877dc3024cb8a7801fa609b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.1/coxswain-terminal-v1.26.1-x86_64-apple-darwin.tar.gz"
      sha256 "f06613fe48241b16f53f1cf3d001790bcf2293acf863d11271595959782c1f0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.1/coxswain-terminal-v1.26.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48676683012c65e3ae46ff598c7d15887ce20ac4b998bff3df542dcb9104104b"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.26.1/coxswain-terminal-v1.26.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2cd83526a7ef5343aa1c5120611c906a3753d8f0c99b532d9a9ccd876bb1171c"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
