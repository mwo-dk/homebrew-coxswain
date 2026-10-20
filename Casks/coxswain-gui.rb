cask "coxswain-gui" do
  version "2.32.0"
  sha256 arm:          "19077f305cf3f26006372e77b7f8c1115a5f1cfee8e285831228322f39dbb0f6",
         intel:        "30ab6140ce23caf4fecba50e908312ca67140c6a2c71357cbf89f1baa16e752a",
         x86_64_linux: "dd3abf74850c43b44306c1cd4345dccb2b4fa95553242dde8b6ed2da22a38e18"

  on_macos do
    arch arm: "aarch64", intel: "x64"

    url "https://github.com/mwo-dk/coxswain/releases/download/v#{version}/Coxswain_#{version}_#{arch}.dmg"

    app "Coxswain.app"
  end
  on_linux do
    url "https://github.com/mwo-dk/coxswain/releases/download/v#{version}/Coxswain_#{version}_amd64.AppImage"

    depends_on arch: :x86_64

    binary "Coxswain_#{version}_amd64.AppImage", target: "coxswain-gui"
  end

  name "Coxswain"
  desc "Norton Commander style file manager with Everything-speed search (desktop app)"
  homepage "https://github.com/mwo-dk/coxswain"

  preflight_steps do
    on_linux do
      set_permissions "Coxswain_{{version}}_amd64.AppImage", "0755"
    end
  end

  # Not notarized: without the quarantine flag cleared, macOS says the app is damaged.
  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/Coxswain.app"]
    end
  end

  # Config and state in the coxswain config folder stay: the terminal app shares them.
  zap trash: [
    "~/Library/Caches/coxswain",
    "~/Library/WebKit/dk.mwo.coxswain",
  ]
end
