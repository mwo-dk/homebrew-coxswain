class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.2/coxswain-terminal-v1.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "094d88de73b57dafc5201ff0f2f60473cc32cb6ca7a9b450b4af1128b14bda59"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.2/coxswain-terminal-v1.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "a0b8a827fa73cb21d8d7500e29308ab9f655b1c2237573796e1c99b718cd24f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.2/coxswain-terminal-v1.4.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b32a8f32e2d001846b91eb43f332d4b8ad82e6fe46ebde8840b301843c7057d3"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v1.4.2/coxswain-terminal-v1.4.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5daca95270c9f69bcf05881359d66bd0732e859c8756db2682800f82781a089b"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
