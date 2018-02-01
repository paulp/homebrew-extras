class CheckerFramework < Formula
  desc "Custom pluggable types for Java"
  homepage "http://checkerframework.org/"
  url "http://types.cs.washington.edu/checker-framework/current/checker-framework-2.3.1.zip"
  version "2.3.1"
  sha256 "0123e7ea2e11fdf8c08776724b097ae9c7db29276593ac2d8f22ed4ca95e1d73"
  depends_on :java => "1.7+"

  def install
    libexec.install Dir['*']
    (bin/'checker-javac').write <<~EOS
      #!/bin/sh
      #

      #{libexec}/checker/bin/javac "$@"
    EOS
  end
end
