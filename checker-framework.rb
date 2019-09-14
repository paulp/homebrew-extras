class CheckerFramework < Formula
  desc "Custom pluggable types for Java"
  homepage "http://checkerframework.org/"
  url "http://types.cs.washington.edu/checker-framework/current/checker-framework-2.11.0.zip"
  version "2.11.0"
  sha256 "64559f40085f485cefe2edb4d9ac5b8cf0ede87cb4c6f2d4adf5b88f4083e840"
  depends_on :java => "1.8"

  def install
    libexec.install Dir['*']
    (bin/'checker-javac').write <<~EOS
      #!/usr/bin/env bash
      #

      export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
      export PATH="$JAVA_HOME/bin:$PATH"

      #{libexec}/checker/bin/javac "$@"
    EOS
  end
end
