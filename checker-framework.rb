class CheckerFramework < Formula
  desc "Custom pluggable types for Java"
  homepage "http://checkerframework.org/"
  url "http://types.cs.washington.edu/checker-framework/current/checker-framework-2.1.4.zip"
  version "2.1.4"
  sha256 "0801e4b54ba8e8bd54a00a5fccc46febba74877634256b8b4b83cc96571fe376"
  depends_on :java => "1.7+"

  def install
    libexec.install Dir['*']
    (bin/'checker-javac').write <<-EOS.undent
      #!/bin/sh
      #

      #{libexec}/checker/bin/javac "$@"
    EOS
  end
end
