require 'formula'

class Sbtx < Formula
  homepage "https://github.com/paulp/sbt-extras"
  url "https://raw.githubusercontent.com/paulp/sbt-extras/e5306b75866a81e54c29b1691bc604acc498b51c/sbt"
  version "20201123"
  sha256 "14635fea215f1417c3dd114f80b11d7a81bf88c2ba1650dc5f4a57a7c784ea89"
  head "https://git.io/sbt", :using => :curl

  def install
    system "mv", "sbt", "sbtx"
    bin.install "sbtx"
  end
end
