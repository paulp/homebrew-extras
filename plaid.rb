require "formula"

class Plaid < Formula
  homepage "http://www.cs.cmu.edu/~aldrich/plaid/"
  head "https://code.google.com/p/plaid-lang", :using => :hg
  depends_on :ant
  env :std

  def install
    Dir.chdir("builder")
    system("ant")
    libexec.install Dir['plaid/*']
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def test
    system("plaid")
  end

end
