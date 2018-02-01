require "formula"

class Rascal < Formula
  homepage "http://www.rascal-mpl.org/start/"
  head "https://update.rascal-mpl.org/console/rascal-shell-stable.jar"

  def install
    libexec.install "rascal-shell-stable.jar"
    (bin/'rascal').write <<~EOS
      #!/bin/sh
      #

      java -Xmx1G -Xss32m -jar #{libexec}/rascal-shell-stable.jar "\$@"
    EOS
  end

  test do
    system "#{bin}/rascal", "</dev/null"
  end
end
