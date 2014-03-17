require 'formula'

class AckUniversal < Formula
  homepage 'http://betterthangrep.com/'
  url 'http://beyondgrep.com/ack-1.96-single-file'
  sha1 '720af10a370f45ccffd870d7de826f08b39a1b96'
  version '1.96'

  def install
    bin.install "ack-1.96-single-file" => "ack196"
    (bin/'ack-universal').write <<-EOS.undent
      #!/bin/sh
      ack196 --noenv --files-with-matches -u "\$@"
    EOS
  end

  test do
    system "#{bin}/ack-universal", 'brew', '/usr/share/dict/words'
  end
end
