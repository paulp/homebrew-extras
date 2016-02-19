require 'formula'

class Sbtx < Formula
  head 'git://github.com/paulp/sbt-extras.git'

  def install
    bin.mkpath
    mv "sbt", bin/"sbtx"
  end
end
