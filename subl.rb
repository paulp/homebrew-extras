require 'formula'

class Subl < Formula
  homepage 'https://github.com/paulp/'
  url 'https://raw.github.com/paulp/homebrew-extras/master/bin/subl'
  sha1 'f0a78544b940c46f200585ad589679702af7bdd5'
  version '0.1.1'

  def install
    bin.install "subl" => "subl"
  end

  test do
    system subl
  end
end
