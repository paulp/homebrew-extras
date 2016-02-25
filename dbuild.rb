class Dbuild < Formula
  desc "distributed build tool for scala"
  homepage "http://typesafehub.github.io/dbuild"
  url "http://repo.typesafe.com/typesafe/ivy-releases/com.typesafe.dbuild/dbuild/0.9.5/tgzs/dbuild-0.9.5.tgz"
  sha256 "bba3628c7d66c3b192bae499dd6a91a3ad2f9c86d82a3ab3a976291b5cb810b1"
  version "0.9.5"
  depends_on :java => "1.7+"

  def install
    libexec.install Dir["*"]
    (bin+"dbuild").write("#!/bin/sh\n\n#{libexec}/bin/dbuild \"$@\"\n")
  end
end
