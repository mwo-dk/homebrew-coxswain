cask "coxswain-gui" do
  version "2.36.0"
  sha256 arm:          "8409dd831fbc877347fcc7755c55c520ef658eecfba443bdbec2be24283644dc",
         intel:        "d354a5b7ec26880989e787a2c2a3017f7323e3133955e9d2a45bdc7e571c17e9",
         x86_64_linux: "4e0a186c398c8b52f62dbda76c6500915e630d57529f6061df7cd168d5417ad8"

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
