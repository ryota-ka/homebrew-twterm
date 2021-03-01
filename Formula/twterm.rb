class Twterm < Formula
  desc "Full-featured TUI Twitter client"
  homepage "https://twterm.ryota-ka.me/"
  url "https://rubygems.org/downloads/twterm-v2.10.1.gem"
  sha256 "d7690e88cff44780903396298f92fdb395f15e43341629c193b23bd81f978ab9"
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
