class Dbuild < Formula
  desc "distributed build tool for scala"
  homepage "http://lightbend.github.io/dbuild"
  url "http://repo.typesafe.com/typesafe/ivy-releases/com.typesafe.dbuild/dbuild/0.9.9/tgzs/dbuild-0.9.9.tgz"
  sha256 "1ce11ee0e60204fe83184b8df0ad45a545ff6409faaa281f1f1986540b3cdac2"
  version "0.9.9"
  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    (bin+"dbuild").write("#!/bin/sh\n\n#{libexec}/bin/dbuild \"$@\"\n")
  end
end
