class Twterm < Formula
  desc "Full-featured TUI Twitter client"
  homepage "https://twterm.ryota-ka.me/"
  url "https://rubygems.org/downloads/twterm-v2.10.0.gem"
  sha256 "945ae8e506eea427108d4c6d2cc11c35ff9d456a53c318d4f7b78e5f2eea33e5"
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
