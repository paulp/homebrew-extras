require 'formula'

class DistributedBuild < Formula
  homepage 'http://typesafehub.github.io/distributed-build'
  url 'http://downloads.typesafe.com/dbuild/0.6.5/dbuild-0.6.5.tgz'
  head 'https://github.com/typesafehub/distributed-build'
  sha1 '384f9a167ae6bfdad89aa297ac25482ee399a76e'

  depends_on 'sbt' => :build

  def install
    bin.install Dir['bin/*']
    doc.install Dir['samples/*']
  end

  test do
    system 'dbuild', '/usr/local/Cellar/distributed-build/0.6.5/share/doc/distributed-build/akka-on-2.10.x.dbuild'
  end
end
