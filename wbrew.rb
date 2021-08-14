require 'formula'

class Wbrew < Formula
  url "https://raw.githubusercontent.com/paulp/homebrew-extras/master/bin/wbrew"
  sha256 "b524935cc8a060ca81849e658b0ba3932b768c5dade8320f043722ce0ebc9057"
  version "20190913"

  def install
    bin.install "wbrew"
  end
end
