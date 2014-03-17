require "formula"

class Rascal < Formula
  homepage "http://www.rascal-mpl.org/start/"
  url "http://update.rascal-mpl.org/console/rascal-0.6.2.jar"
  sha1 "3930c8545281d47fa990f7db4069d5b53d1d5838"

  def install
    libexec.install "rascal-0.6.2.jar"
    (bin/'rascal').write <<-EOS.undent
      #!/bin/sh
      java -Xmx1G -Xss32m -jar $JAVA_OPTS #{libexec}/rascal-0.6.2.jar "\$@"
    EOS
  end

  test do
    system "#{bin}/rascal", "</dev/null"
  end
end
