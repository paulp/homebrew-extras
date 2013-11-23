require 'formula'

class Stdbuf < Formula
  homepage 'http://www.gnu.org/software/coreutils/manual/coreutils.html#stdbuf-invocation'
  head 'https://github.com/tcreech/stdbuf-osx.git'
  version 'FreeBSD-9.2.0'

  def install
    system "make"
    bin.install "stdbuf"
    lib.install "libstdbuf.dylib"
  end
end
