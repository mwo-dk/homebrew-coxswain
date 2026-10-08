class Coxswain < Formula
  desc "Norton Commander style file manager with Everything-speed search"
  homepage "https://github.com/mwo-dk/coxswain"
  version "2.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.16.0/coxswain-terminal-v2.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ba22075493100cf08eebaf6ccc423f15f4baade043a756e41a50476e3504f86"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.16.0/coxswain-terminal-v2.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "e3417efefb3739bd28940f4498cc5b252a3ea0e5000c8f8dc39569966f4e0eba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.16.0/coxswain-terminal-v2.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc7ff89d60c6f966cbca87ee24a3ac8c01adb1b6d98067f4a07cca5149fece39"
    end
    on_intel do
      url "https://github.com/mwo-dk/coxswain/releases/download/v2.16.0/coxswain-terminal-v2.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4188ffe69f18a9298ba49b4cfe98df791e5a529832669ffdf47f84f600937872"
    end
  end

  def install
    bin.install "coxswain", "cox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coxswain --version")
  end
end
