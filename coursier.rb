require 'formula'

class Coursier < Formula
  desc "Coursier launcher."
  homepage "http://get-coursier.io"
  version "1.0.1"
  url "https://github.com/coursier/coursier/raw/v1.0.1/coursier", :using => :nounzip
  sha256 "23aa05a84a9df5d84b76be40659300bfcb367d8a1b4307908f89ba3fc6dac1e6"

  depends_on :java => "1.8+"

  def install
    bin.install 'coursier'
  end

  test do
    ENV["COURSIER_CACHE"] = "#{testpath}/cache"
    output = shell_output("#{bin}/coursier launch io.get-coursier:echo:1.0.1 -- foo")
    assert_equal ["foo\n"], output.lines
  end
end
