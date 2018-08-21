require 'formula'

class Etlas < Formula
  desc "Eta is a pure, lazy, strongly typed functional programming language on the JVM."
  homepage "https://eta-lang.org"
  version "1.5.0.0"
  url "https://cdnverify.eta-lang.org/eta-binaries/etlas-#{version}/binaries/x86_64-osx/etlas", :using => :nounzip
  sha256 "c48307d1c504086365c8c444058693d9c0e364e44a1c6edd675089d9dc4467f6"

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
