require 'formula'

class Tab < Formula
  homepage 'https://tkatchev.bitbucket.org/tab'
  head 'https://bitbucket.org/tkatchev/tab.git'

  def install
    system "make", "CXX=/usr/local/bin/g++-5"
    bin.install "tab"
  end
end
