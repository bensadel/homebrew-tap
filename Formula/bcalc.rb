class Bcalc < Formula
  desc "The insanely simple command line calculator for macOS"
  homepage "https://github.com/bensadel/bcalc"
  url "https://github.com/bensadel/bcalc/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "58cbd37d63bea310720cf9752a9826ff739440068bf669f2e843ccbd26927ce6"
  license "GPL-3.0-or-later"
  head "https://github.com/bensadel/bcalc.git", branch: "main"

  def install
    bin.install "bin/bcalc"
    man1.install "man/bcalc.1"
  end

  test do
    output = shell_output("#{bin}/bcalc --help")
    assert_match "bcalc", output
  end
end