class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.0.1/coxswain-terminal-v1.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "64cfe425666eab265a42edec66155970016b996c787e175a0dcf0a246943908e"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.0.1/coxswain-terminal-v1.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "863be5ecc750a39f7207ea2425e0bb3a468961e6e37d2d4d16ff2f2ed491fdc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.0.1/coxswain-terminal-v1.0.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a20943b977a99b5a453f067b491c88fe9ae7f1ee41a4c3a8ac9f9ae14fa82a5a"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.0.1/coxswain-terminal-v1.0.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ea5b7084b2184a307880bf0ac16556bd9afe028364a8667613e6c33fb0366c5"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
