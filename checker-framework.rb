class CheckerFramework < Formula
  desc "Custom pluggable types for Java"
  homepage "http://checkerframework.org/"
  url "https://checkerframework.org/checker-framework-3.1.0.zip"
  sha256 "7e5c382fb3a491beefd4a1bcf679aa5ae7b0f182d04e77f1456629507e97f9e7"
  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    (bin/"checker-javac").write <<~EOS
      #!/usr/bin/env bash
      #

      export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
      export PATH="$JAVA_HOME/bin:$PATH"

      #{libexec}/checker/bin/javac "$@"
    EOS
  end
end
