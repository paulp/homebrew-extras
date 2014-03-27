require 'formula'

class Lsusb < Formula
  homepage 'https://github.com/jlhonora/lsusb'
  head 'https://github.com/jlhonora/lsusb', :using => :git

  def install
    bin.install('lsusb')
    man8.install('man/lsusb.8')
  end
end
