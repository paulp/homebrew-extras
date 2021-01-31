require 'formula'

class Coursier < Formula
  desc "Coursier launcher."
  homepage "https://get-coursier.io"
  version "2.0.7"
  url "https://github.com/coursier/coursier/releases/download/v2.0.7/coursier"
  sha256 "d3ba37e53d9cfa778af481c7099cd1dc485242283e9d2c5c2753f3859908cbd4"
  bottle :unneeded

  option "without-zsh-completions", "Disable zsh completion installation"

  depends_on "openjdk@8"

  def install
    unless build.without? "zsh-completion"
      FileUtils.mkdir_p "completions/zsh"
      system "bash", "-c", "bash ./coursier --completions zsh > completions/zsh/_coursier"
      zsh_completion.install "completions/zsh/_coursier"
    end

    bin.install 'coursier'
  end

  test do
    ENV["COURSIER_CACHE"] = "#{testpath}/cache"
    output = shell_output("#{bin}/coursier launch io.get-coursier:echo:1.0.2 -- foo")
    assert_equal ["foo\n"], output.lines
  end
end
