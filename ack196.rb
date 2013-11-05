require 'formula'

class Ack196 < Formula
  homepage 'http://betterthangrep.com/'
  url 'https://github.com/petdance/ack/archive/1.96.tar.gz'
  sha1 '5d53b2b6f285e222a8459730495d6b07c692edd6'
  version '1.96'

  def install
    libexec.install %w{ ack etc }
    bin.install_symlink libexec/'ack' => 'ack196'
  end

  test do
    system "#{bin}/ack196", 'brew', '/usr/share/dict/words'
  end
end
