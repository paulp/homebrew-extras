require 'formula'

class Subl < Formula
  homepage 'https://github.com/paulp/'
  url 'https://raw.github.com/paulp/homebrew-extras/master/bin/subl'
  sha1 '4864e89a533a50e57ed4c2ddbd37e52d1db39b1c'
  version '0.1.3'

  def install
    bin.install "subl" => "subl"
  end

  test do
    system subl
  end
end
