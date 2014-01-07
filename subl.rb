require 'formula'

class Subl < Formula
  homepage 'https://github.com/paulp/'
  url 'https://raw.github.com/paulp/homebrew-extras/master/bin/subl'
  sha1 'e3e418336810c8bad390446a1b760b7aae6cbeaf'
  version '0.1.2'

  def install
    bin.install "subl" => "subl"
  end

  test do
    system subl
  end
end
