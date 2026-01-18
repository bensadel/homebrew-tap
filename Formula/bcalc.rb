class Bcalc < Formula
  desc "Insanely simple command-line calculator for macOS"
  homepage "https://github.com/bensadel/bcalc"
  url "https://github.com/bensadel/bcalc/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "78e508da7a9cbbe13d93162e1a3e1d2f05d7bbf7e0450240d0695bff398a4410"
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
