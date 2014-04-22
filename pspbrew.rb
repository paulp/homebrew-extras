require 'formula'

class Pspbrew < Formula
  head 'git://github.com/paulp/homebrew-extras.git'

  def install
    bin.install Dir['bin/*']
  end
end
