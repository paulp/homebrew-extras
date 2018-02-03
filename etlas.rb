require 'formula'

class Etlas < Formula
  desc "Eta."
  homepage "https://eta-lang.org"
  version "1.2.0.0"
  url "https://cdnverify.eta-lang.org/eta-binaries/etlas-#{version}/binaries/x86_64-osx/etlas", :using => :nounzip
  sha256 "b9c83ee5c801a8c0a8c4512dd8b371f929e777bf3befec3fe11de7de151738e9"

  depends_on :java => "1.7+"

  def install
    bin.install 'etlas'
  end

  def caveats; <<~EOS
    Now run:

    etlas update
    etlas select latest
    EOS
  end
end
