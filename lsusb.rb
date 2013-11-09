require 'formula'

class Lsusb < Formula
  homepage 'https://github.com/paulp/lsusb'
  head 'https://github.com/paulp/lsusb', :using => :git

  def install
    bin.install('lsusb')
    man1.install('man/lsusb.1')
  end

  test do
    system "true"
  end
end
