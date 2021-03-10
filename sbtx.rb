require 'formula'

class Sbtx < Formula
  homepage "https://github.com/paulp/sbt-extras"
  url "https://raw.githubusercontent.com/paulp/sbt-extras/6db3d3d1c38082dd4c49cce9933738d9bff50065/sbt"
  version "20210308"
  sha256 "c41366a625c0abdee2d2ec217c81dbe4e2c297c45717b9f4ee4349db33cdca98"
  head "https://git.io/sbt", :using => :curl

  def install
    system "mv", "sbt", "sbtx"
    bin.install "sbtx"
  end
end
