class Twterm < Formula
  desc "Full-featured TUI Twitter client"
  homepage "https://twterm.ryota-ka.me/"
  url "https://rubygems.org/downloads/twterm-v2.9.0.gem"
  sha256 "0cf8b2b4dec2c33e964e162b2177eb01467f6e0cee53785f711dbdd248534b9a"
  license "MIT"

  depends_on "libidn"
  depends_on "ncurses"
  depends_on "readline"
  depends_on "ruby@2.7"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", "#{name}-#{version}.gem"
    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files(libexec/"bin", GEM_HOME: ENV["GEM_HOME"])
  end

  test do
    system "twterm", "--version"
  end
end
