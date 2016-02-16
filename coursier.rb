require 'formula'

class Coursier < Formula
  head 'git://github.com/alexarchambault/coursier.git'

  def install
    bin.install 'coursier'
  end
end
