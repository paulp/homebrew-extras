require 'formula'

class Subl < Formula
  homepage 'https://github.com/paulp/'
  url 'https://raw.github.com/paulp/homebrew-extras/master/bin/subl'
  sha1 '64e8dd0ce509f1c76d435563528547d256808569'
  version '0.1'

  def install
    bin.install "subl" => "subl"
  end

  test do
    system subl
  end
end
