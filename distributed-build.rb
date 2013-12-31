require 'formula'

class DistributedBuild < Formula
  homepage 'http://typesafehub.github.io/distributed-build'
  url 'http://downloads.typesafe.com/dbuild/0.7.0/dbuild-0.7.0.tgz'
  sha1 'b8b1bf8ea38db3a8cb7da17b2830a1fdeb6a193b'

  def install
    bin.install Dir['bin/*']
    doc.install Dir['samples/*']
  end

  test do
    system 'dbuild', '/usr/local/Cellar/distributed-build/0.7.0/share/doc/distributed-build/akka-on-2.10.x.dbuild'
  end
end
