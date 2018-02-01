require 'formula'

class Coursier < Formula
  desc "Coursier launcher."
  homepage "http://get-coursier.io"
  version "1.0.0"
  url "https://github.com/coursier/coursier/raw/v1.0.0/coursier", :using => :nounzip
  sha256 "32cf24bbd4221f1d36129e326baeff908eb84ee99dd686ae19a3e339ee63c704"

  depends_on :java => "1.8+"

  def install
    bin.install 'coursier'
  end

  test do
    ENV["COURSIER_CACHE"] = "#{testpath}/cache"
    output = shell_output("#{bin}/coursier launch io.get-coursier:echo:1.0.0 -- foo")
    assert_equal ["foo\n"], output.lines
  end
end
