require 'formula'

class Sbtx < Formula
  homepage "https://github.com/paulp/sbt-extras"
  url "https://raw.githubusercontent.com/paulp/sbt-extras/53f1edc685d8f269ac551336809e34faf7cd29a6/sbt"
  version "20190913"
  sha256 "243e3fd25262ac7f7f564ff04c363c804a8d96a8821576c3334375a03f451373"
  head "https://git.io/sbt", :using => :curl

  def install
    system "mv", "sbt", "sbtx"
    bin.install "sbtx"
  end
end
