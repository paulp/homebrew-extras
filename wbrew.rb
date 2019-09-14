require 'formula'

class Wbrew < Formula
  url "https://raw.githubusercontent.com/paulp/homebrew-extras/master/bin/wbrew"
  sha256 "94cd7c262b099d35070dfaf4bc678ffc545ab2d8e1aea0865f20320e7681c65a"
  version "20190913"

  def install
    bin.install "wbrew"
  end
end
