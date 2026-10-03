class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.27.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.3/coxswain-terminal-v1.27.3-aarch64-apple-darwin.tar.gz"
      sha256 "f03b527292f8f066d9b94dcccac0ddc23306d0c54ce9a73b8b946392eb21b057"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.3/coxswain-terminal-v1.27.3-x86_64-apple-darwin.tar.gz"
      sha256 "1adef7d49f5445ec69ba8ae4f3253d3072d937206ee706101b4694273695b537"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.3/coxswain-terminal-v1.27.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e64160e76059b7ecc26e96446ddb9a2020e516a6e1d39800fefe9c782966a9c5"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.27.3/coxswain-terminal-v1.27.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "442be7c850d3f7a64c87bf1740f44718ed7c4d9c8766239b53d6e7310373df1d"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
