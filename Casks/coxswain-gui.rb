cask "coxswain-gui" do
  version "2.37.0"
  sha256 arm:          "99d22ea89f8b2aa342e7627798fd6a02184094f59dd53f55eb22186516f77e5c",
         intel:        "c1da5df6e45ea57d3b435485625556cb836cd6b1ff0dda154236d2ddb1a8d5f5",
         x86_64_linux: "2d39e1a75025ab9d732359698a40ae404539c62818d9f234119b59e893712af5"

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

  # The search helper runs from inside the bundle: stopped before an upgrade or uninstall
  # replaces it, or macOS kills it and reports a crash. A launchctl remove, not the uninstall
  # stanza's launchctl, which would delete the LaunchAgent and so turn off Start with my session; launchd loads it
  # again at login, and the next app start hands it back at once.
  uninstall_preflight_steps do
    on_macos do
      run "/bin/launchctl", args: ["remove", "dk.mwo.coxswain.index"], must_succeed: false
    end
  end

  # Config and state in the coxswain config folder stay: the terminal app shares them. The
  # LaunchAgent goes with --zap only.
  zap launchctl: "dk.mwo.coxswain.index",
      trash:     [
        "~/Library/Caches/coxswain",
        "~/Library/WebKit/dk.mwo.coxswain",
      ]
end
