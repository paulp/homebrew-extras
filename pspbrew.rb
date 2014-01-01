require 'formula'

class Pspbrew < Formula
  head 'git://github.com/paulp/homebrew-extras.git'

  def install
    bin.install "bin/brew-options-built" => "brew-options-built"
  end
end
