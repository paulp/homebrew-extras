require "formula"

class Rascal < Formula
  homepage "http://www.rascal-mpl.org/start/"
  url "https://update.rascal-mpl.org/console/rascal-shell-stable.jar"
  sha256 "e26815fb7f9966689ca64bef82e61eb5bc9eba3887cbe0950422e4250e41e2cb"

  def install
    libexec.install "rascal-shell-stable.jar"
    (bin/'rascal').write <<-EOS.undent
      #!/bin/sh
      #

      java -Xmx1G -Xss32m -jar #{libexec}/rascal-shell-stable.jar "\$@"
    EOS
  end

  test do
    system "#{bin}/rascal", "</dev/null"
  end
end
