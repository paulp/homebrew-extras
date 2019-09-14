require 'formula'

class Coursier < Formula
  desc "Coursier launcher."
  homepage "https://get-coursier.io"
  version "2.0.0-RC3-4"
  url "https://github.com/coursier/coursier/releases/download/v2.0.0-RC3-4/coursier"
  sha256 "a5dc05a63379dc2a2ce3d12373737f440ef956472042e080fc8cc62d7dc594f2"
  bottle :unneeded

  option "without-zsh-completions", "Disable zsh completion installation"

  depends_on :java => "1.8+"

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
