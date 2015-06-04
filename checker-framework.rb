class CheckerFramework < Formula
  desc "Custom pluggable types for Java"
  homepage "http://checkerframework.org/"
  url "http://types.cs.washington.edu/checker-framework/current/checker-framework.zip"
  version "1.9.2"
  sha256 "2fbabcd7192708cb5610ea38c03397f04794aba14f3694ae8dd1d11184b108e9"
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
