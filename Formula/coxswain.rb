class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.18.0/coxswain-terminal-v2.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "ac0e729ec4de6c1d24c5e7dd65ae49ea3608c7ef4c736ebd35b39072ecd5c4b8"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.18.0/coxswain-terminal-v2.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "bf830b9808f990db16af8b41b8d842b8d46d06ea0043e834a50d00d9a56ec55b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.18.0/coxswain-terminal-v2.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73b835beb1ffc06317337d9e16e170b58004342d8c52939e1623da6caaa4b780"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.18.0/coxswain-terminal-v2.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf1a3ace94483ac9a190c97ee61c095884a19b9b23b2cb5a3dfdfe40b1e0d118"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
