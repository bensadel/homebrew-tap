class Bcalc < Formula
  desc "Insanely simple command-line calculator for macOS"
  homepage "https://github.com/bensadel/bcalc"
  url "https://github.com/bensadel/bcalc/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "36980cef3d3ab60acb2799dbeae1f587b450d4407ce4fef6c8f2c56870a76b46"
  license "GPL-3.0-or-later"
  head "https://github.com/bensadel/bcalc.git", branch: "main"

  depends_on "readline"

  def install
    system ENV.cc, "src/bcalc.c", "-o", "bcalc", "-lreadline", "-lm"
    bin.install "bcalc"
    man1.install "man/bcalc.1"
  end

  test do
    output = shell_output("#{bin}/bcalc --help")
    assert_match "bcalc", output
  end
end
